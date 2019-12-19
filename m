Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71982127073
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:13:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STG5SZ2Ay3OnlTh/zFhzhu2agPC86wPyA0E5WosdEJk=; b=VRmPINGXNKnCH5
	4R0G55PJAGnkK4XDpNASPEnqyem0BHREh7EwgoxGoUcoNQCosAmoNWxzzZLPFnIKzVWjeMxrxse0d
	O3w+iND30QfCxXbx3kgCo7lZ2AXrkuoi8WSmN3BqUKA519zozUeptFPGCVRBnTj3Z+I3UltvZYXvM
	n2X1DIfGGkKavTknV+vRMSOTc20+XOae4UJwmF98ly95/4W1rFPCu59xTRPrkGufEuX6ivP3JX03U
	wUrS7pzItGpfSa8FTRo5uFAewPqhRewllJyDxtAO1IaUyHl5JyF6bJvIJVWmDMtzIviCH6tJjZGF3
	rrR1nsHmAmPqyiBZa+wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii438-0007sY-UQ; Thu, 19 Dec 2019 22:13:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41J-000543-Nx
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:48 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E21364BC4;
 Thu, 19 Dec 2019 23:11:43 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f982a799;
 Thu, 19 Dec 2019 23:11:34 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:15 +0100
Message-Id: <20191219221125.22646-7-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141145_962389_1D6FF54F 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH ubus 06/16] add initial GitLab CI support
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VXNlcyBjdXJyZW50bHkgcHJvb2Ytb2YtY29uY2VwdCBvcGVud3J0LWNpWzFdIGluIG9yZGVyIHRv
OgoKICogaW1wcm92ZSB0aGUgcXVhbGl0eSBvZiB0aGUgY29kZWJhc2UgaW4gdmFyaW91cyBhcmVh
cwogKiBkZWNyZWFzZSBjb2RlIHJldmlldyB0aW1lIGFuZCBoZWxwIG1lcmdpbmcgY29udHJpYnV0
aW9ucyBmYXN0ZXIKICogZ2V0IGF1dG9tYWdpYyBmZWVkYmFjayBsb29wIG9uIHZhcmlvdXMgcGxh
dGZvcm1zIGFuZCB0b29scwogICAtIG91dCBvZiB0cmVlIGJ1aWxkIHdpdGggT3BlbldydCBTREsg
b24gZm9sbG93aW5nIHRhcmdldHM6CiAgICAgKiBhdGg3OS1nZW5lcmljCiAgICAgKiBpbXg2LWdl
bmVyaWMKICAgICAqIG1hbHRhLWJlCiAgICAgKiBtdmVidS1jb3J0ZXhhNTMKICAgLSBvdXQgb2Yg
dHJlZSBuYXRpdmUgYnVpbGQgb24geDg2LzY0IHdpdGggR0NDICh2ZXJzaW9ucyA3LCA4LCA5KSBh
bmQgQ2xhbmcgMTAKICAgLSBvdXQgb2YgdHJlZSBuYXRpdmUgeDg2LzY0IHN0YXRpYyBjb2RlIGFu
YWx5c2lzIHdpdGggY3BwY2hlY2sgYW5kCiAgICAgc2Nhbi1idWlsZCBmcm9tIENsYW5nIDkKCjEu
IGh0dHBzOi8vZ2l0bGFiLmNvbS95bmV6ei9vcGVud3J0LWNpLwoKU2lnbmVkLW9mZi1ieTogUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiAuZ2l0bGFiLWNpLnltbCB8IDcgKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IC5n
aXRsYWItY2kueW1sCgpkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55bWwgYi8uZ2l0bGFiLWNpLnlt
bApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjFiNGQ1YTc5NTg2NQot
LS0gL2Rldi9udWxsCisrKyBiLy5naXRsYWItY2kueW1sCkBAIC0wLDAgKzEsNyBAQAordmFyaWFi
bGVzOgorICBDSV9UQVJHRVRfQlVJTERfREVQRU5EUzogdWJ1cworICBDSV9DTUFLRV9FWFRSQV9C
VUlMRF9BUkdTOiAtRExVQVBBVEg9L3Vzci9saWIvbHVhCisKK2luY2x1ZGU6CisgIC0gcmVtb3Rl
OiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC1jaS9yYXcvbWFzdGVyL29wZW53cnQt
Y2kvZ2l0bGFiL21haW4ueW1sCisgIC0gcmVtb3RlOiBodHRwczovL2dpdGxhYi5jb20veW5lenov
b3BlbndydC1jaS9yYXcvbWFzdGVyL29wZW53cnQtY2kvZ2l0bGFiL3BpcGVsaW5lLnltbAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
