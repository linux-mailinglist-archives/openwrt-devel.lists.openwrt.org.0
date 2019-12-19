Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661B612706C
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:12:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBoy7hCxi/UhSHMQnIa9DxHPnd66A5zDSv9+SerXQmk=; b=dQ/9ppXtqyuiHb
	5ehQsOHRLRzdTpOOc/P+1tZfhj5MoZAeUzsrzSiT4YyU26NYsKjh4crZ+9APSt1mteXFNlUr4CHEt
	brgNvrRI113FxySuSkMAUIYFhP46ZFcY+dBo1aQf0SRh7eb9GxJKv968TBrMT2AoRj34IWPjhe/Cd
	pHb03YhgJfVe/ruIrhjw032IwYMNS41kHk3K6fANI8vio9RlvWtob+f8gJw5en3wP8Lil87GEVQOA
	ZLDp4BF9SLxKvnPAPs5Irlh3cdJzchx+DxKvySEqMVwvOrKUXmipbLS9m7MJLUD9K7ZjKFFJcMv3a
	5l7S+GGVEhjcSk8SF+JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii41z-0005lD-AU; Thu, 19 Dec 2019 22:12:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41H-00052e-L2
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5E7AE4BB9;
 Thu, 19 Dec 2019 23:11:42 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 028458c1;
 Thu, 19 Dec 2019 23:11:32 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:11 +0100
Message-Id: <20191219221125.22646-3-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141143_835579_0B3B2D01 
X-CRM114-Status: UNSURE (   8.76  )
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
Subject: [OpenWrt-Devel] [PATCH ubus 02/16] ubusd: fix comparison of
 integers of different signs
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

Rml4ZXMgZm9sbG93aW5nIGNsYW5nLTkgY29tcGlsZXIgd2FybmluZzoKCiB1YnVzZC5jOjM2OjE5
OiBlcnJvcjogY29tcGFyaXNvbiBvZiBpbnRlZ2VycyBvZiBkaWZmZXJlbnQgc2lnbnM6ICd1aW50
MzJfdCcgKGFrYSAndW5zaWduZWQgaW50JykgYW5kICdpbnQnIFstV2Vycm9yLC1Xc2lnbi1jb21w
YXJlXQogICAgICAgICBpZiAodWItPnJlZmNvdW50ID09IH4wKSB7CiAgICAgICAgICAgICB+fn5+
fn5+fn5+fn4gXiAgfn4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+Ci0tLQogdWJ1c2QuYyB8IDggKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdWJ1c2QuYyBiL3VidXNkLmMKaW5k
ZXggMGYzNWQzZTI1ZDM0Li43NzM4ZjUwZjk3NzkgMTAwNjQ0Ci0tLSBhL3VidXNkLmMKKysrIGIv
dWJ1c2QuYwpAQCAtMzAsMTAgKzMwLDEyIEBACiAKICNpbmNsdWRlICJ1YnVzZC5oIgogCisjZGVm
aW5lIFVTRVNfRVhURVJOQUxfQlVGRkVSIH4wVQorCiBzdGF0aWMgc3RydWN0IHVidXNfbXNnX2J1
ZiAqdWJ1c19tc2dfcmVmKHN0cnVjdCB1YnVzX21zZ19idWYgKnViKQogewogCXN0cnVjdCB1YnVz
X21zZ19idWYgKm5ld191YjsKLQlpZiAodWItPnJlZmNvdW50ID09IH4wKSB7CisJaWYgKHViLT5y
ZWZjb3VudCA9PSBVU0VTX0VYVEVSTkFMX0JVRkZFUikgewogCQluZXdfdWIgPSB1YnVzX21zZ19u
ZXcodWItPmRhdGEsIHViLT5sZW4sIGZhbHNlKTsKIAkJaWYgKCFuZXdfdWIpCiAJCQlyZXR1cm4g
TlVMTDsKQEAgLTYxLDcgKzYzLDcgQEAgc3RydWN0IHVidXNfbXNnX2J1ZiAqdWJ1c19tc2dfbmV3
KHZvaWQgKmRhdGEsIGludCBsZW4sIGJvb2wgc2hhcmVkKQogCXViLT5mZCA9IC0xOwogCiAJaWYg
KHNoYXJlZCkgewotCQl1Yi0+cmVmY291bnQgPSB+MDsKKwkJdWItPnJlZmNvdW50ID0gVVNFU19F
WFRFUk5BTF9CVUZGRVI7CiAJCXViLT5kYXRhID0gZGF0YTsKIAl9IGVsc2UgewogCQl1Yi0+cmVm
Y291bnQgPSAxOwpAQCAtNzgsNyArODAsNyBAQCB2b2lkIHVidXNfbXNnX2ZyZWUoc3RydWN0IHVi
dXNfbXNnX2J1ZiAqdWIpCiB7CiAJc3dpdGNoICh1Yi0+cmVmY291bnQpIHsKIAljYXNlIDE6Ci0J
Y2FzZSB+MDoKKwljYXNlIFVTRVNfRVhURVJOQUxfQlVGRkVSOgogCQlpZiAodWItPmZkID49IDAp
CiAJCQljbG9zZSh1Yi0+ZmQpOwogCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
