Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7962111F45B
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 22:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ctg6pevDYGpmW9p/P3/yTEOUw28OR8kVej3MimbEh4=; b=GMSCChM578utBr
	Gdytj54rsZyGhU7JuWYARZggGcqsz7rr94lAKc7/kIMx+GAW8Z8FlCPlEE/xMntCgjyRJA9dX3X4B
	9niAcb1mzZ7Cx/eqLp0b7trs8uurHHMGZP958XATQVni4/eFPMn+CfmUxGYMBMalCLDLrSyA9pAqn
	pS1I4uabsnj6bwIzDiBqRV9BZFhu+mRuZ02PRMd8knsPlcz2glhgrGdfhqmfCo/5VU9K5H4hNIgfK
	zlGjzbM4iRy95x3UlM2phPnZsTyQZwm5XlFOo6evVMx027Ivxi3WLSxlkOKXDsx56nBuPd4kPQHUr
	M1LTUCeRrmlkWpM3EuMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igFO9-0001Kh-Il; Sat, 14 Dec 2019 21:55:49 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igFNi-0000wy-Ro
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 21:55:24 +0000
Received: by mail-lj1-x244.google.com with SMTP id 21so2646984ljr.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Dec 2019 13:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GjN7ciQvIoG2MDMQa5eagNlK/rsd/jUFH2lkVt2Ul0c=;
 b=S1IiXrFtvJyuFblo9CX3X8nc4w5OfwhszToC5LsnFMlp0uSefLdYjhoo1EPPYoOFRb
 iXwamir7dDfp9/cN+cjbCCIybp02jg1iQQQ+bY1owVN4OKcWWN+r2z8ntb+6sKnhpRHZ
 s5kcYahKZVJYIfR4k3+OCGSjI7hu2csjdexQflsU4ctXiBGEJMHbjRqbViW0lDyEct0r
 YUNpWWR90kHWKcC1foOfSta1uz4AgKC/lkIvH+3512/CD2xbA1SzUBzwrNCT0lVO/mNp
 Kjm13mcGBwdXpeTM14DTOe0nYG7u+oO/v8pVj2Wb6c9Bk/i0YfWODMxVLDx04spNjEMz
 0bPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GjN7ciQvIoG2MDMQa5eagNlK/rsd/jUFH2lkVt2Ul0c=;
 b=Mt66S56NsqvERId3sI4n2NOGnx524XTZHeZMeqbHbXKzL9Q9nffDIqDJP4lbKmWeQ5
 qbHqk00x75VKejv69WTm7ChBDUO6yyL1O2mGytOBmYRsd4HHAFLSosQk5GSu/n7GXfWZ
 KsvRbKJEdPPu1JqN3bmJX+M9zEEb7CIvFTW53R7W8DpwCV9HKcABTW5YXZwKhhEPkBnI
 OCEVipRYD1nTdjXl4nmMUaOgGX4PuprW+ggwZfe1Q97r5ZweIqYsPKDbee+6PCrlje8E
 t/A+Xd5QktQzvNkh2XYDKVz/JhMk0VfQ/f06EDjBlo4mzw44DIpMw8ZLGtFYNYb9tNK3
 m2gw==
X-Gm-Message-State: APjAAAVWg+G0tt7T+icLvR6FxcP3opnY+W5BkN2KDSSd0CO/6GMtCCgu
 Jr7J8iN8F6FOE2K/3AUWBVXCLR6h
X-Google-Smtp-Source: APXvYqz4J+wkur5Yw8GANvVTe+Mjfw6Pqpa15u5QW8S+zsGtHqTPJDJUIbz4QHJ6FY0FKvbA7p8kJQ==
X-Received: by 2002:a2e:9d9a:: with SMTP id c26mr14128894ljj.225.1576360521044; 
 Sat, 14 Dec 2019 13:55:21 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id f26sm7272897ljn.104.2019.12.14.13.55.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Dec 2019 13:55:20 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 14 Dec 2019 22:55:01 +0100
Message-Id: <20191214215501.14219-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191214215501.14219-1-zajec5@gmail.com>
References: <20191214215501.14219-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_135522_902102_ECA9500D 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH fstools 2/2] libblkid-tiny: use separated
 buffer for each block device read
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBhbGxvd3MgcmVh
ZGluZyBtdWx0aXBsZSBjaHVua3Mgb2YgYmxvY2sgZGV2aWNlIGRhdGEgYW5kIG9wZXJhdGluZwpv
biB0aGVtIHNpbXVsdGFuZW91c2x5LiBQcmV2aW91cyBpbXBsZW1lbnRhdGlvbiB3YXMgdXNpbmcg
YSBzaW5nbGUKYnVmZmVyIChleGNlcHQgZm9yIHJlYWRpbmcgbW9yZSBkYXRhIHRoYW4gYWxsb2Nh
dGVkIHNpemUpIGFuZCBzdWJzZXF1ZW50CnJlYWRzIHdlcmUgY29ycnVwdGluZyBtZW1vcnkgb2Yg
cHJldmlvdXNseSByZXR1cm5lZCBidWZmZXJzLgoKVGhpcyBmaXhlcyBlLmcuIHByb2JsZW0gd2l0
aCByZWFkaW5nIE5URlMgVVVJRCBhbmQgdmFsaWRhdGluZyBWRkFUCnNpZ25hdHVyZS4KCkltcGxl
bWVudGF0aW9uIGlzIGJhc2VkIG9uIG9yaWdpbmFsIGxpYmJsa2lkIGNvZGUgd2hpY2ggaGFuZGxl
cyBpdApzaW1pbGFybHkuIEJ1ZmZlcnMgYXJlIHB1dCBvbiBwcm9iZSBpbnRlcm5hbCBsaXN0IGFu
ZCBmcmVlZCB3aGVuCnJlbGVhc2luZyBhIHByb2JlIHN0cnVjdC4KClNpZ25lZC1vZmYtYnk6IFJh
ZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBsaWJibGtpZC10aW55L2xpYmJs
a2lkLXRpbnkuYyB8IDM2ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBsaWJi
bGtpZC10aW55L2xpYmJsa2lkLXRpbnkuaCB8ICAyICsrCiBsaWJibGtpZC10aW55L3Byb2JlLmMg
ICAgICAgICB8IDIzICsrKysrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMzkg
aW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliYmxraWQtdGlu
eS9saWJibGtpZC10aW55LmMgYi9saWJibGtpZC10aW55L2xpYmJsa2lkLXRpbnkuYwppbmRleCBh
MzBmNjE5Li4wNWI0Yjk5IDEwMDY0NAotLS0gYS9saWJibGtpZC10aW55L2xpYmJsa2lkLXRpbnku
YworKysgYi9saWJibGtpZC10aW55L2xpYmJsa2lkLXRpbnkuYwpAQCAtMTMsOSArMTMsNiBAQAog
CiBpbnQgYmxraWRfZGVidWdfbWFzayA9IDA7CiAKLXN0YXRpYyB1bnNpZ25lZCBjaGFyICpwcm9i
ZV9idWZmZXI7Ci1zdGF0aWMgdW5zaWduZWQgaW50IHByb2JlX2J1ZmZlcl9zaXplID0gMDsKLQog
aW50IGdldF9saW51eF92ZXJzaW9uICh2b2lkKQogewogCXN0YXRpYyBpbnQga3ZlciA9IC0xOwpA
QCAtODEsMzIgKzc4LDI3IEBAIGludCBibGtpZF9wcm9iZV9zcHJpbnRmX3ZlcnNpb24oYmxraWRf
cHJvYmUgcHIsIGNvbnN0IGNoYXIgKmZtdCwgLi4uKQogdW5zaWduZWQgY2hhciAqYmxraWRfcHJv
YmVfZ2V0X2J1ZmZlcihibGtpZF9wcm9iZSBwciwKIAkJCQlibGtpZF9sb2ZmX3Qgb2ZmLCBibGtp
ZF9sb2ZmX3QgbGVuKQogeworCXN0cnVjdCBibGtpZF9idWZpbmZvICpiZjsKIAlpbnQgcmV0Owot
CXVuc2lnbmVkIGNoYXIgKmJ1ZjsKLQotCWlmIChsZW4gPiBwcm9iZV9idWZmZXJfc2l6ZSkgewot
CQlidWYgPSByZWFsbG9jKHByb2JlX2J1ZmZlciwgbGVuKTsKIAotCQlpZiAoIWJ1ZikgewotCQkJ
ZnByaW50ZihzdGRlcnIsICJmYWlsZWQgdG8gYWxsb2NhdGUgJWQgYnl0ZSBidWZmZXJcbiIsCi0J
CQkgICAgICAgIChpbnQpbGVuKTsKLQotCQkJcmV0dXJuIE5VTEw7Ci0JCX0KLQotCQlwcm9iZV9i
dWZmZXIgPSBidWY7Ci0JCXByb2JlX2J1ZmZlcl9zaXplID0gbGVuOwotCX0KLQotCW1lbXNldChw
cm9iZV9idWZmZXIsIDAsIHByb2JlX2J1ZmZlcl9zaXplKTsKKwliZiA9IG1hbGxvYyhzaXplb2Yo
KmJmKSArIGxlbik7CisJaWYgKCFiZikKKwkJcmV0dXJuIE5VTEw7CisJbWVtc2V0KGJmLCAwLCBz
aXplb2YoKmJmKSk7CisJYmYtPmRhdGEgPSAoKHVuc2lnbmVkIGNoYXIgKiliZikgKyBzaXplb2Yo
KmJmKTsKIAogCWxzZWVrKHByLT5mZCwgb2ZmLCBTRUVLX1NFVCk7Ci0JcmV0ID0gcmVhZChwci0+
ZmQsIHByb2JlX2J1ZmZlciwgbGVuKTsKKwlyZXQgPSByZWFkKHByLT5mZCwgYmYtPmRhdGEsIGxl
bik7CiAKLQlpZiAocmV0ICE9IGxlbikKKwlpZiAocmV0ICE9IGxlbikgewogCQlmcHJpbnRmKHN0
ZGVyciwgImZhaWxlIHRvIHJlYWQgYmxraWRcbiIpOworCQlmcmVlKGJmKTsKKwkJcmV0dXJuIE5V
TEw7CisJfQorCisJbGlzdF9hZGRfdGFpbCgmYmYtPmJ1ZnMsICZwci0+YnVmZmVycyk7CiAKLQly
ZXR1cm4gcHJvYmVfYnVmZmVyOworCXJldHVybiBiZi0+ZGF0YTsKIH0KIAogaW50IGJsa2lkX3By
b2JlX3NldF9sYWJlbChibGtpZF9wcm9iZSBwciwgdW5zaWduZWQgY2hhciAqbGFiZWwsIHNpemVf
dCBsZW4pCmRpZmYgLS1naXQgYS9saWJibGtpZC10aW55L2xpYmJsa2lkLXRpbnkuaCBiL2xpYmJs
a2lkLXRpbnkvbGliYmxraWQtdGlueS5oCmluZGV4IDA2ZmY5NGIuLmFhODdmZDkgMTAwNjQ0Ci0t
LSBhL2xpYmJsa2lkLXRpbnkvbGliYmxraWQtdGlueS5oCisrKyBiL2xpYmJsa2lkLXRpbnkvbGli
YmxraWQtdGlueS5oCkBAIC01OCw2ICs1OCw4IEBAIHN0cnVjdCBibGtpZF9zdHJ1Y3RfcHJvYmUK
IAljaGFyCXV1aWRbNjRdOwogCWNoYXIJbGFiZWxbMjU2XTsKIAljaGFyCXZlcnNpb25bNjRdOwor
CisJc3RydWN0IGxpc3RfaGVhZAlidWZmZXJzOwkvKiBsaXN0IG9mIGJ1ZmZlcnMgKi8KIH07CiAK
IHN0cnVjdCBibGtpZF9zdHJ1Y3RfcHJvYmUgKmJsa2lkX25ld19wcm9iZSh2b2lkKTsKZGlmZiAt
LWdpdCBhL2xpYmJsa2lkLXRpbnkvcHJvYmUuYyBiL2xpYmJsa2lkLXRpbnkvcHJvYmUuYwppbmRl
eCA1NGUyMmRjLi5hZTdlNzA4IDEwMDY0NAotLS0gYS9saWJibGtpZC10aW55L3Byb2JlLmMKKysr
IGIvbGliYmxraWQtdGlueS9wcm9iZS5jCkBAIC05LDggKzksMTEgQEAKIAogI2luY2x1ZGUgPHN0
ZGxpYi5oPgogCisjaW5jbHVkZSAiYmxraWRQLmgiCiAjaW5jbHVkZSAibGliYmxraWQtdGlueS5o
IgogCitzdGF0aWMgaW50IGJsa2lkX3Byb2JlX3Jlc2V0X2J1ZmZlcnMoc3RydWN0IGJsa2lkX3N0
cnVjdF9wcm9iZSAqcHIpOworCiBzdHJ1Y3QgYmxraWRfc3RydWN0X3Byb2JlICpibGtpZF9uZXdf
cHJvYmUodm9pZCkKIHsKIAlzdHJ1Y3QgYmxraWRfc3RydWN0X3Byb2JlICpwcjsKQEAgLTE5LDYg
KzIyLDggQEAgc3RydWN0IGJsa2lkX3N0cnVjdF9wcm9iZSAqYmxraWRfbmV3X3Byb2JlKHZvaWQp
CiAJaWYgKCFwcikKIAkJcmV0dXJuIE5VTEw7CiAKKwlJTklUX0xJU1RfSEVBRCgmcHItPmJ1ZmZl
cnMpOworCiAJcmV0dXJuIHByOwogfQogCkBAIC0yNyw1ICszMiwyMyBAQCB2b2lkIGJsa2lkX2Zy
ZWVfcHJvYmUoc3RydWN0IGJsa2lkX3N0cnVjdF9wcm9iZSAqcHIpCiAJaWYgKCFwcikKIAkJcmV0
dXJuOwogCisJYmxraWRfcHJvYmVfcmVzZXRfYnVmZmVycyhwcik7CisKIAlmcmVlKHByKTsKIH0K
Kworc3RhdGljIGludCBibGtpZF9wcm9iZV9yZXNldF9idWZmZXJzKHN0cnVjdCBibGtpZF9zdHJ1
Y3RfcHJvYmUgKnByKQoreworCWlmIChsaXN0X2VtcHR5KCZwci0+YnVmZmVycykpCisJCXJldHVy
biAwOworCisJd2hpbGUgKCFsaXN0X2VtcHR5KCZwci0+YnVmZmVycykpIHsKKwkJc3RydWN0IGJs
a2lkX2J1ZmluZm8gKmJmID0gbGlzdF9maXJzdF9lbnRyeSgmcHItPmJ1ZmZlcnMsIHN0cnVjdCBi
bGtpZF9idWZpbmZvLCBidWZzKTsKKworCQlsaXN0X2RlbCgmYmYtPmJ1ZnMpOworCisJCWZyZWUo
YmYpOworCX0KKworCXJldHVybiAwOworfQotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
