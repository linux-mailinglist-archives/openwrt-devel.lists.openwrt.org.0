Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AC417A487
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 12:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y6CxNa433+FlKKAPBT/Yq+eStVR8MoiO2zHTmhCZtbk=; b=gDlgkVIVJ9pFK7
	sZGl/ad4CIQV+bpVC4jnLnvOed1DMmdw/b+74KcyykkRzG5/LNNQp58n8kJAvTZR41fIelZr2EG5m
	QvS5IuGQe1hXsJgZIOqLMNKXQpDywWz1HIUeLgyO9jMXdJT3Bp4SxyLcO3Fv1/020iv6qJb1wqK4W
	7BB0FPvB0DkRYExFen2EGvqd16bgiqXQFjfbJxKVu5SlxRP5EwMLad/CNcEJfm5tOYUt5yY5XpqKp
	28/XxjW7nBOogEsrg95sQFZ+CP7n73qXH6545LR/h8e5VOq8vgi7qgbiEkXHZCZ3ufhWPtb6vvrCY
	R13iCDKPdcmNEAnpldNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9oxX-0002bb-EP; Thu, 05 Mar 2020 11:46:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9oxQ-0002bA-Bw
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 11:46:29 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0841F3C38;
 Thu,  5 Mar 2020 12:46:26 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id be62a55f;
 Thu, 5 Mar 2020 12:46:12 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Mar 2020 12:46:21 +0100
Message-Id: <20200305114621.31104-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_034628_555031_E4470D3A 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] malta: fix missing watchdog dependency in
 hwmon-sch5627
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rml4ZXMgZm9sbG93aW5nIGVycm9yIHVuY292ZXJlZCB3aGlsZSBidWlsZGluZyBtYWx0YS9iZSBv
biA1LjQ6CgogUGFja2FnZSBrbW9kLWh3bW9uLXNjaDU2MjcgaXMgbWlzc2luZyBkZXBlbmRlbmNp
ZXMgZm9yIHRoZSBmb2xsb3dpbmcgbGlicmFyaWVzOgogd2F0Y2hkb2cua28KClRoYXQgZGVwZW5k
ZW5jeSB3YXMgaW50cm9kdWNlZCBpbiB1cHN0cmVhbSB2aWEgMmQ4YzdmZjUyYzI0CigiaHdtb24v
c2NoNTZ4eDogRGVwZW5kIG9uIHdhdGNoZG9nIGZvciB3YXRjaGRvZyBjb3JlIGZ1bmN0aW9ucyIp
IGluCnYzLjUuCgpDYzogWW91c29uZyBaaG91IDx5c3pob3U0dGVjaEBnbWFpbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogdGFyZ2V0L2xpbnV4
L21hbHRhL2NvbmZpZy00LjE5IHwgMSArCiB0YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTUuNCAg
fCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGFy
Z2V0L2xpbnV4L21hbHRhL2NvbmZpZy00LjE5IGIvdGFyZ2V0L2xpbnV4L21hbHRhL2NvbmZpZy00
LjE5CmluZGV4IGY2NjAzNmUyN2JiNy4uM2FkN2RiZWQ3NTU4IDEwMDY0NAotLS0gYS90YXJnZXQv
bGludXgvbWFsdGEvY29uZmlnLTQuMTkKKysrIGIvdGFyZ2V0L2xpbnV4L21hbHRhL2NvbmZpZy00
LjE5CkBAIC0zMzMsNCArMzMzLDUgQEAgQ09ORklHX1ZUPXkKIENPTkZJR19WVF9DT05TT0xFPXkK
IENPTkZJR19WVF9IV19DT05TT0xFX0JJTkRJTkc9eQogQ09ORklHX1ZYRlNfRlM9eQorQ09ORklH
X1dBVENIRE9HX0NPUkU9eQogQ09ORklHX1hQUz15CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgv
bWFsdGEvY29uZmlnLTUuNCBiL3RhcmdldC9saW51eC9tYWx0YS9jb25maWctNS40CmluZGV4IDQx
ZmM5NzcwNDM1Zi4uMzdkM2RiZWY5YWUwIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvbWFsdGEv
Y29uZmlnLTUuNAorKysgYi90YXJnZXQvbGludXgvbWFsdGEvY29uZmlnLTUuNApAQCAtMzQxLDQg
KzM0MSw1IEBAIENPTkZJR19WVD15CiBDT05GSUdfVlRfQ09OU09MRT15CiBDT05GSUdfVlRfSFdf
Q09OU09MRV9CSU5ESU5HPXkKIENPTkZJR19WWEZTX0ZTPXkKK0NPTkZJR19XQVRDSERPR19DT1JF
PXkKIENPTkZJR19YUFM9eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
