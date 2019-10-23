Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60840E1642
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 11:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsQAzq7gaB0+nZPpp1y5H31xiIgpv/CuERj/FhFbvHs=; b=OxqNQF7fGWh9fN
	DhS4F+b2+ZsPwSkBDlGc3ko87uWsEJ/gVRHrYTrXsRjt3ryDHz9eGuMTt/JJrQE7wpL2rcMhCWajM
	5Dy+3CXnec0BwXqUvF53guskwJGbEw+kMoumHdDCAy0IIFZNCSLVbvwWuPx5HeOAMfmUBA9Jg5Vif
	cn3q2RlcpKtFGNOFgL3elBUqYLtvX18XzeyB7vFyeXECRJbbydT6JjP7etQ8cs1GKi6lDyf/Sv7n0
	u8l9TcbKNfZpzs6BqWHPikq1758otOWi/s61loIR3GVEmGcNdQXp1wQiAC+V+JVEL/r0Hno/dCtz0
	v3JOo4MsvwPEER29dQ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iND30-00054J-68; Wed, 23 Oct 2019 09:35:18 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCyV-0001Ze-1R
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 09:30:43 +0000
Received: from [192.168.180.1] (port=43716 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1iNCyP-0002Ck-2f
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 11:30:33 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id B36C728033C;
 Wed, 23 Oct 2019 11:30:33 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 11:30:29 +0200
Message-Id: <20191023093030.18611-3-avalentin@marcant.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023093030.18611-1-avalentin@marcant.net>
References: <20191023093030.18611-1-avalentin@marcant.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_023039_281354_78523CA3 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/3] ar71xx: fix bug in NBG6716
 kernelpacking, add firmware partition
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
Cc: avalentin@marcant.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

LUZpeCB0aGUga2VybmVsIGltYWdlIGdlbmVyYXRpb24gKG1vcmUgcm9idXN0KQotQWRkIGEgZmly
bXdhcmUgcGFydGl0aW9uIHRhYmxlIGFsbG93aW5nIGVhc3kgdXBncmFkZSB0byBhdGg3OQoKU2ln
bmVkLW9mZi1ieTogQW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+Ci0tLQog
dGFyZ2V0L2xpbnV4L2FyNzF4eC9pbWFnZS9sZWdhY3kubWsgfCA1ICsrKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rhcmdl
dC9saW51eC9hcjcxeHgvaW1hZ2UvbGVnYWN5Lm1rIGIvdGFyZ2V0L2xpbnV4L2FyNzF4eC9pbWFn
ZS9sZWdhY3kubWsKaW5kZXggMzYzZTA5NTZjNy4uOTI2Y2U3ODBiNCAxMDA2NDQKLS0tIGEvdGFy
Z2V0L2xpbnV4L2FyNzF4eC9pbWFnZS9sZWdhY3kubWsKKysrIGIvdGFyZ2V0L2xpbnV4L2FyNzF4
eC9pbWFnZS9sZWdhY3kubWsKQEAgLTI3Myw3ICsyNzMsNyBAQCB0ZXc4MjNkcnVfbXRkbGF5b3V0
PW10ZHBhcnRzPXNwaTAuMDoxOTJrKHUtYm9vdClybyw2NGsobnZyYW0pcm8sMTUyOTZrKGZpcm13
YXJlKQogd25kcjQzMDBfbXRkbGF5b3V0PW10ZHBhcnRzPWFyOTM0eC1uZmM6MjU2ayh1LWJvb3Qp
cm8sMjU2ayh1LWJvb3QtZW52KXJvLDI1NmsoY2FsZGF0YSlybyw1MTJrKHBvdCksMjA0OGsobGFu
Z3VhZ2UpLDUxMmsoY29uZmlnKSwzMDcyayh0cmFmZmljX21ldGVyKSwyMDQ4ayhrZXJuZWwpLDIz
NTUyayh1YmkpLDI1NjAwa0AweDZjMDAwMChmaXJtd2FyZSksMjU2ayhjYWxkYXRhX2JhY2t1cCks
LShyZXNlcnZlZCkKIHpjbjE1MjNoX210ZGxheW91dD1tdGRwYXJ0cz1zcGkwLjA6MjU2ayh1LWJv
b3Qpcm8sNjRrKHUtYm9vdC1lbnYpcm8sNjIwOGsocm9vdGZzKSwxNDcyayhrZXJuZWwpLDY0ayhj
b25maWd1cmUpcm8sNjRrKG1mZylybyw2NGsoYXJ0KXJvLDc2ODBrQDB4NTAwMDAoZmlybXdhcmUp
CiBteW5ldF9yZXh0X210ZGxheW91dD1tdGRwYXJ0cz1zcGkwLjA6MjU2ayh1LWJvb3Qpcm8sNzgw
OGsoZmlybXdhcmUpLDY0ayhudnJhbSlybyw2NGsoQVJUKXJvCi16eXhfbmJnNjcxNl9tdGRsYXlv
dXQ9bXRkcGFydHM9c3BpMC4wOjI1NmsodS1ib290KXJvLDY0ayhlbnYpcm8sNjRrKFJGZGF0YSly
bywtKG5idSk7YXI5MzR4LW5mYzoyMDQ4ayh6eXhlbF9yZnNkKSwyMDQ4ayhyb21kKSwxMDI0ayho
ZWFkZXIpLDIwNDhrKGtlcm5lbCksLSh1YmkpCit6eXhfbmJnNjcxNl9tdGRsYXlvdXQ9bXRkcGFy
dHM9c3BpMC4wOjI1NmsodS1ib290KXJvLDY0ayhlbnYpcm8sNjRrKFJGZGF0YSlybywtKG5idSk7
YXI5MzR4LW5mYzoyMDQ4a0AweDAoenl4ZWxfcmZzZCksMjA0OGtAMHgyMDAwMDAocm9tZCksMTAy
NGtAMHg0MDAwMDAoaGVhZGVyKSwyMDQ4a0AweDUwMDAwMChrZXJuZWwpLDEyNTk1MmtAMHg1MDAw
MDAoZmlybXdhcmUpLC1AMHg3MDAwMDAodWJpKQogCiBkZWZpbmUgSW1hZ2UvQnVpbGRLZXJuZWwK
IAljcCAkKEtESVIpL3ZtbGludXguZWxmICQoVk1MSU5VWCkuZWxmCkBAIC03NzEsMTMgKzc3MSwx
NCBAQCBkZWZpbmUgSW1hZ2UvQnVpbGQvWnlYRUwKIAlmaTsgZmkKIGVuZGVmCiAKKyMgYXR0ZW50
aW9uOiBvbmx5IHpsaWIgY29tcHJlc3Npb24gaXMgYWxsb3dlZCBmb3IgdGhlIGJvb3QgZnMKIGRl
ZmluZQlJbWFnZS9CdWlsZC9aeVhFTE5BTkQvYnVpbGRrZXJuZWwKIAkkKGV2YWwga2VybmVsc2l6
ZT0kKGNhbGwgbXRkcGFydHNpemUsa2VybmVsLCQoNSkpKQogCSQoY2FsbCBNa3VJbWFnZUx6bWEs
JCgyKSwkKDMpICQoNSkgJCg2KSkKIAlta2RpciAtcCAkKEtESVJfVE1QKS8kKDIpL2ltYWdlL2Jv
b3QKIAljcCAkKEtESVJfVE1QKS92bWxpbnV4LSQoMikudUltYWdlICQoS0RJUl9UTVApLyQoMikv
aW1hZ2UvYm9vdC92bWxpbnV4Lmx6bWEudUltYWdlCiAJJChTVEFHSU5HX0RJUl9IT1NUKS9iaW4v
bWtmcy5qZmZzMiBcCi0JCS0tcGFkPSQoa2VybmVsc2l6ZSkgLS1iaWctZW5kaWFuIC0tc3F1YXNo
LXVpZHMgLXYgLWUgMTI4S2lCIFwKKwkJLS1wYWQ9JChrZXJuZWxzaXplKSAtLWJpZy1lbmRpYW4g
LS1zcXVhc2gtdWlkcyAtdiAtZSAxMjhLaUIgLXEgLWYgLW4gLXggbHptYSAteCBydGltZSBcCiAJ
CS1vICQoS0RJUl9UTVApLyQoMikta2VybmVsLmpmZnMyIFwKIAkJLWQgJChLRElSX1RNUCkvJCgy
KS9pbWFnZSBcCiAJCTI+JjEgMT4vZGV2L251bGwgfCBhd2sgJy9eLiskJC8nCi0tIAoyLjIwLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
