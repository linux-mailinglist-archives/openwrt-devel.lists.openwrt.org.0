Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C04145B27
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 13:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohTVOIaod9d6BEWNQWjBYb3STOMFb3JvaZcghZ58QPU=; b=b2lsZ/u04+WdEz
	FOUj/eIGOVMAGNK1wdagUZAZIcRbkLXE6D473uBIoQyC9AsBa+/6ov32MmPL77QKiPnZPaV1DkYvk
	w3BsythOpiwsACdJwEsWlIsqJbZTlWIVjKlpnhnyHmj6tj4eTjW0JQlPomROu+b4L6U71a05ogk4h
	T1Xk9j69JfI6w0A30jpIVXr9vO69vnntqGu0hJM3d2FRqbY2wmdtnaN6tbEbrfYP3mx31Q3Z+l7gl
	BfZVsxhp5OWC2HH3njQn+HAp++Dttv3qPirAe/a0fFGDPHVIK6OZ5YEY2KiUSKUW8KeAbyFVKjFr5
	RwWuz/tC8eKIihbyq0Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbk6H-0007vt-Ma; Fri, 14 Jun 2019 11:10:29 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbk5w-0006XD-2O
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 11:10:10 +0000
Received: from [192.168.180.1] (port=48386 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1hbk5g-0003tk-29
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 13:09:52 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 8ED392803D6;
 Fri, 14 Jun 2019 13:09:52 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 14 Jun 2019 13:09:46 +0200
Message-Id: <20190614110947.10540-3-avalentin@marcant.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190614110947.10540-1-avalentin@marcant.net>
References: <20190614110947.10540-1-avalentin@marcant.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_041008_284584_69808B1C 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/3] netsupport: improve xfrm module support
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

LXN3aXRjaCB0byBtb2R1bGUgYXV0b3Byb2JlCi1leGNsdWRlIDQuOSBrZXJuZWwKClNpZ25lZC1v
ZmYtYnk6IEFuZHLDqSBWYWxlbnRpbiA8YXZhbGVudGluQG1hcmNhbnQubmV0PgotLS0KIHBhY2th
Z2Uva2VybmVsL2xpbnV4L21vZHVsZXMvbmV0c3VwcG9ydC5tayB8IDQgKystLQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9wYWNr
YWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL25ldHN1cHBvcnQubWsgYi9wYWNrYWdlL2tlcm5lbC9s
aW51eC9tb2R1bGVzL25ldHN1cHBvcnQubWsKaW5kZXggMjA2MTZkOWFmNi4uOTczMmVlMGQ3MyAx
MDA2NDQKLS0tIGEvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9uZXRzdXBwb3J0Lm1rCisr
KyBiL3BhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMvbmV0c3VwcG9ydC5tawpAQCAtMzg2LDEw
ICszODYsMTAgQEAgJChldmFsICQoY2FsbCBLZXJuZWxQYWNrYWdlLGlwNi12dGkpKQogZGVmaW5l
IEtlcm5lbFBhY2thZ2UveGZybS1pbnRlcmZhY2UKICAgU1VCTUVOVTo9JChORVRXT1JLX1NVUFBP
UlRfTUVOVSkKICAgVElUTEU6PUlQc2VjIFhGUk0gSW50ZXJmYWNlCi0gIERFUEVORFM6PStrbW9k
LWlwc2VjNCAra21vZC1pcHNlYzYgQCFMSU5VWF80XzE0CisgIERFUEVORFM6PStrbW9kLWlwc2Vj
NCAra21vZC1pcHNlYzYgQCFMSU5VWF80XzE0IEAhTElOVVhfNF85CiAgIEtDT05GSUc6PUNPTkZJ
R19YRlJNX0lOVEVSRkFDRQogICBGSUxFUzo9JChMSU5VWF9ESVIpL25ldC94ZnJtL3hmcm1faW50
ZXJmYWNlLmtvCi0gIEFVVE9MT0FEOj0kKGNhbGwgQXV0b0xvYWQsMzMseGZybV9pbnRlcmZhY2Up
CisgIEFVVE9MT0FEOj0kKGNhbGwgQXV0b1Byb2JlLHhmcm1faW50ZXJmYWNlKQogZW5kZWYKIAog
ZGVmaW5lIEtlcm5lbFBhY2thZ2UveGZybS1pbnRlcmZhY2UvZGVzY3JpcHRpb24KLS0gCjIuMTEu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
