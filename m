Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1802A44D
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 May 2019 14:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMvl8EeS+n324/u1js6EjUAaflFOult1H/uN1CWEYuw=; b=pMGvI6sL63486y
	G0eIxq4TBkYaxmWLRLTZZAGea0uONBbjGFELtiUFyZkZbd+hY7Wcc1p3qAXkYNR/2C+lcGeqoRnhu
	yFUrvxASRcg+mXTf9jY6+1Ta9h1BIanMpAXwIc9jJ2VAIz62nj4amCPzzXjfPUEpsfXwnx+7rQjdJ
	1a0kyhMM6YPfKf9PVuCg9CBUwlBdyR7uF7HckPHe3DbS2wgKEfjnke4aZQjIq8xtZ31400+WgxEG/
	BtKmBErifMAO9Evd7ZbT4HNmdltR7IdCY4JIpQ10CsVctVvbMZ5c1EjA9iT2HRODIxArfZV308ttT
	OtD+dw5jljLXV9AaTtyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUVLB-00047r-AI; Sat, 25 May 2019 11:59:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUVKI-0002zm-W1
 for openwrt-devel@lists.openwrt.org; Sat, 25 May 2019 11:59:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7814F3A36;
 Sat, 25 May 2019 13:58:58 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d7721364;
 Sat, 25 May 2019 13:58:57 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 25 May 2019 13:58:41 +0200
Message-Id: <1558785521-31779-7-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558785521-31779-1-git-send-email-ynezz@true.cz>
References: <1558785521-31779-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_045903_220920_A7C9D363 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 6/6] ar71xx: ag71xx: update ethtool support
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmVtb3ZlIHJlZmVyZW5jZXMgdG8gYnJva2VuIGFuZCBtb3N0bHkgZGVwcmVjYXRlZCBwaHlfZXRo
dG9vbF9pb2N0bCwgdXNlCm5ldyB7cyxnfWV0X2xpbmtfa3NldHRpbmdzIGFuZCBhZGQgbndheV9y
ZXNldCB3aGljaCB3YXMgcHJldmlvdXNseQpoYW5kbGVkIGluIHBoeV9ldGh0b29sX2lvY3RsLgoK
Q2M6IEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJvemVuLm9yZz4KUmVmOiBodHRwczovL2J1Z3Mub3Bl
bndydC5vcmcvaW5kZXgucGhwP2RvPWRldGFpbHMmdGFza19pZD0xOTgyClNpZ25lZC1vZmYtYnk6
IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogLi4uL25ldC9ldGhlcm5ldC9hdGhl
cm9zL2FnNzF4eC9hZzcxeHhfZXRodG9vbC5jICAgfCA0OCArKysrKysrLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2FyNzF4eC9maWxlcy9kcml2ZXJzL25ldC9ldGhlcm5ldC9h
dGhlcm9zL2FnNzF4eC9hZzcxeHhfZXRodG9vbC5jIGIvdGFyZ2V0L2xpbnV4L2FyNzF4eC9maWxl
cy9kcml2ZXJzL25ldC9ldGhlcm5ldC9hdGhlcm9zL2FnNzF4eC9hZzcxeHhfZXRodG9vbC5jCmlu
ZGV4IGEyZWFiYTFhMWU2OC4uOWU1YTUzZTdmY2UyIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgv
YXI3MXh4L2ZpbGVzL2RyaXZlcnMvbmV0L2V0aGVybmV0L2F0aGVyb3MvYWc3MXh4L2FnNzF4eF9l
dGh0b29sLmMKKysrIGIvdGFyZ2V0L2xpbnV4L2FyNzF4eC9maWxlcy9kcml2ZXJzL25ldC9ldGhl
cm5ldC9hdGhlcm9zL2FnNzF4eC9hZzcxeHhfZXRodG9vbC5jCkBAIC0xNCwzOCArMTQsNiBAQAog
I2luY2x1ZGUgImFnNzF4eC5oIgogI2luY2x1ZGUgPGxpbnV4L3ZlcnNpb24uaD4KIAotc3RhdGlj
IGludCBhZzcxeHhfZXRodG9vbF9nZXRfc2V0dGluZ3Moc3RydWN0IG5ldF9kZXZpY2UgKmRldiwK
LQkJCQkgICAgICAgc3RydWN0IGV0aHRvb2xfY21kICpjbWQpCi17Ci0Jc3RydWN0IGFnNzF4eCAq
YWcgPSBuZXRkZXZfcHJpdihkZXYpOwotCXN0cnVjdCBwaHlfZGV2aWNlICpwaHlkZXYgPSBhZy0+
cGh5X2RldjsKLQotCWlmICghcGh5ZGV2KQotCQlyZXR1cm4gLUVOT0RFVjsKLQotI2lmIExJTlVY
X1ZFUlNJT05fQ09ERSA8IEtFUk5FTF9WRVJTSU9OKDQsMTQsMCkKLQlyZXR1cm4gcGh5X2V0aHRv
b2xfZ3NldChwaHlkZXYsIGNtZCk7Ci0jZWxzZQotCXJldHVybiBwaHlfZXRodG9vbF9pb2N0bChw
aHlkZXYsIGNtZCk7Ci0jZW5kaWYKLX0KLQotc3RhdGljIGludCBhZzcxeHhfZXRodG9vbF9zZXRf
c2V0dGluZ3Moc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKLQkJCQkgICAgICAgc3RydWN0IGV0aHRv
b2xfY21kICpjbWQpCi17Ci0Jc3RydWN0IGFnNzF4eCAqYWcgPSBuZXRkZXZfcHJpdihkZXYpOwot
CXN0cnVjdCBwaHlfZGV2aWNlICpwaHlkZXYgPSBhZy0+cGh5X2RldjsKLQotCWlmICghcGh5ZGV2
KQotCQlyZXR1cm4gLUVOT0RFVjsKLQotI2lmIExJTlVYX1ZFUlNJT05fQ09ERSA8IEtFUk5FTF9W
RVJTSU9OKDQsMTQsMCkKLQlyZXR1cm4gcGh5X2V0aHRvb2xfc3NldChwaHlkZXYsIGNtZCk7Ci0j
ZWxzZQotCXJldHVybiBwaHlfZXRodG9vbF9pb2N0bChwaHlkZXYsIGNtZCk7Ci0jZW5kaWYKLX0K
LQogc3RhdGljIHZvaWQgYWc3MXh4X2V0aHRvb2xfZ2V0X2RydmluZm8oc3RydWN0IG5ldF9kZXZp
Y2UgKmRldiwKIAkJCQkgICAgICAgc3RydWN0IGV0aHRvb2xfZHJ2aW5mbyAqaW5mbykKIHsKQEAg
LTEyNywxNCArOTUsMjYgQEAgc3RhdGljIGludCBhZzcxeHhfZXRodG9vbF9zZXRfcmluZ3BhcmFt
KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBh
ZzcxeHhfZXRodG9vbF9ud2F5X3Jlc2V0KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpCit7CisJc3Ry
dWN0IGFnNzF4eCAqYWcgPSBuZXRkZXZfcHJpdihkZXYpOworCXN0cnVjdCBwaHlfZGV2aWNlICpw
aHlkZXYgPSBhZy0+cGh5X2RldjsKKworCWlmICghcGh5ZGV2KQorCQlyZXR1cm4gLUVOT0RFVjsK
KworCXJldHVybiBnZW5waHlfcmVzdGFydF9hbmVnKHBoeWRldik7Cit9CisKIHN0cnVjdCBldGh0
b29sX29wcyBhZzcxeHhfZXRodG9vbF9vcHMgPSB7Ci0JLnNldF9zZXR0aW5ncwk9IGFnNzF4eF9l
dGh0b29sX3NldF9zZXR0aW5ncywKLQkuZ2V0X3NldHRpbmdzCT0gYWc3MXh4X2V0aHRvb2xfZ2V0
X3NldHRpbmdzLAogCS5nZXRfZHJ2aW5mbwk9IGFnNzF4eF9ldGh0b29sX2dldF9kcnZpbmZvLAog
CS5nZXRfbXNnbGV2ZWwJPSBhZzcxeHhfZXRodG9vbF9nZXRfbXNnbGV2ZWwsCiAJLnNldF9tc2ds
ZXZlbAk9IGFnNzF4eF9ldGh0b29sX3NldF9tc2dsZXZlbCwKIAkuZ2V0X3JpbmdwYXJhbQk9IGFn
NzF4eF9ldGh0b29sX2dldF9yaW5ncGFyYW0sCiAJLnNldF9yaW5ncGFyYW0JPSBhZzcxeHhfZXRo
dG9vbF9zZXRfcmluZ3BhcmFtLAorCS5nZXRfbGlua19rc2V0dGluZ3MgPSBwaHlfZXRodG9vbF9n
ZXRfbGlua19rc2V0dGluZ3MsCisJLnNldF9saW5rX2tzZXR0aW5ncyA9IHBoeV9ldGh0b29sX3Nl
dF9saW5rX2tzZXR0aW5ncywKIAkuZ2V0X2xpbmsJPSBldGh0b29sX29wX2dldF9saW5rLAogCS5n
ZXRfdHNfaW5mbwk9IGV0aHRvb2xfb3BfZ2V0X3RzX2luZm8sCisJLm53YXlfcmVzZXQJPSBhZzcx
eHhfZXRodG9vbF9ud2F5X3Jlc2V0LAogfTsKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
