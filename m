Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D2A1D619A
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 16:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LB/4DxLAL+fXH5M+b2pzoqeyfZNNGhUKxhXOXuxkvC0=; b=B0wxHVKwjApj5v
	pXgxmRzADclPBzEPE4pB9yxy8/kOSufecdcnyV97tK1NLX0YGBlzau5vY6uRnCJKIdGJ0W/LJdZMj
	sBZKoZxKrxAEayQo2lSwf42Odh43Bb50AqvMvX6np+jqHjX4moDpdmpHwuoDNfFa8AqayVucNWW9z
	tFBFoxNuhcqAGrYCWg0VbdC2VlSKkvBcpIgKYgeWb7ydr3IwV7CoHTxOSQ5yQz6/Rj4MWi74aDOs0
	Tii8+ZKkJuEmIVMveqne2eOy75dW2/ckwLJVh1D49w2EmIYV7z5LH50AymXgMYkQiZpxU4vS2WMmS
	DLrHk5VrPs7gAZ9jQgsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZy2u-00067X-NL; Sat, 16 May 2020 14:44:12 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZy2m-00066T-7L
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 14:44:06 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 124D360075;
 Sat, 16 May 2020 16:43:50 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 124D360075
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 124D360075
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1589640232; bh=zdg5bY7pbCfAp5SwSs1J8pVBD/5XdbORb0tbVCmiYjc=;
 h=From:To:Cc:Subject:Date:From;
 b=ZlYqkU389nhYUCCHBULb8LY51LRbwBe/SnFPE8L4dDQs6uPHbThBL7EjmT7fLjVRy
 2UhqPXzOgknxa+9jbgGTulgnipO7M31NdK5DPYwZhYI/vKOkMgbcYx1g1DTlyqQaB1
 g/D5p9STD5gdwbZ9hsjB3yKaedlk3U7uAS5QbHd4=
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 16 May 2020 16:43:50 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 16:43:40 +0200
Message-Id: <20200516144340.14228-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_074404_739487_0B3BAFBA 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] generic: platform/mikrotik: fix LZOR support
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
Cc: hauke@hauke-m.de, koen.vandeputte@ncentric.com,
 =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

MzFlOTlmZTNkYSB3aGljaCBpbnRyb2R1Y2VkIHRoaXMgY29kZSB3YXMgdW5mb3J0dW5hdGVseSB1
bnRlc3RlZC4KVGhpcyBjb21taXQgZml4ZXMgYSBudW1iZXIgb2YgaXNzdWVzIGFuZCB3b3JrcyBh
cm91bmQgdGhlIGZhY3QgdGhhdCBpbgp0aGlzIHBhcnRpY3VsYXIgc2NoZW1lLCB0aGUgTFpPIHBh
eWxvYWQgbWF5IGJlIHBhZGRlZCBhdCB0aGUgZW5kIHdoaWNoCndpbGwgdHJpZ2dlciBhIGhhcm1s
ZXNzIGx6byBkZWNvbXByZXNzaW9uIGVycm9yLgpUaGlzIGNvbW1pdCBhbHNvIGRpc2FtYmlndWF0
ZXMgdGhlIGRlYnVnIHByaW50a3MuCgpUZXN0ZWQtYnk6IFJvYmVydCBNYXJrbyA8cm9iaW1hcmtv
QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRp
cnQub3JnPgotLS0KIC4uLi9kcml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL3JiX2hhcmRjb25maWcu
YyAgICAgIHwgNTkgKysrKysrKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDM3IGlu
c2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9n
ZW5lcmljL2ZpbGVzL2RyaXZlcnMvcGxhdGZvcm0vbWlrcm90aWsvcmJfaGFyZGNvbmZpZy5jIGIv
dGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9wbGF0Zm9ybS9taWtyb3Rpay9yYl9o
YXJkY29uZmlnLmMKaW5kZXggMjYyMThkNmE3ZC4uNzQwMjMyMDQyOCAxMDA2NDQKLS0tIGEvdGFy
Z2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9wbGF0Zm9ybS9taWtyb3Rpay9yYl9oYXJk
Y29uZmlnLmMKKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9wbGF0Zm9y
bS9taWtyb3Rpay9yYl9oYXJkY29uZmlnLmMKQEAgLTM2LDcgKzM2LDcgQEAKIAogI2luY2x1ZGUg
InJvdXRlcmJvb3QuaCIKIAotI2RlZmluZSBSQl9IQVJEQ09ORklHX1ZFUgkJIjAuMDIiCisjZGVm
aW5lIFJCX0hBUkRDT05GSUdfVkVSCQkiMC4wMyIKICNkZWZpbmUgUkJfSENfUFJfUEZYCQkJIlty
Yl9oYXJkY29uZmlnXSAiCiAKIC8qIElEIHZhbHVlcyBmb3IgaGFyZHdhcmUgc2V0dGluZ3MgKi8K
QEAgLTQ4NCwxNiArNDg0LDE4IEBAIHN0YXRpYyBpbnQgaGNfd2xhbl9kYXRhX3VucGFja19sem9y
KGNvbnN0IHU4ICppbmJ1Ziwgc2l6ZV90IGlubGVuLAogCQkJCSAgICB2b2lkICpvdXRidWYsIHNp
emVfdCAqb3V0bGVuKQogewogCXUxNiBybGVfb2ZzLCBybGVfbGVuOwotCXNpemVfdCB0ZW1wbGVu
OwotCXU4ICp0ZW1wYnVmOworCWNvbnN0IHUzMiAqbmVlZGxlOworCXU4ICp0ZW1wYnVmLCAqcHRy
OworCXNpemVfdCB0ZW1wbGVuLCBsem9fbGVuOwogCWludCByZXQ7CiAKLQl0ZW1wbGVuID0gaW5s
ZW4gKyBzaXplb2YoaGNfbHpvcl9wcmVmaXgpOwotCWlmICh0ZW1wbGVuID4gKm91dGxlbikKKwls
em9fbGVuID0gaW5sZW4gKyBzaXplb2YoaGNfbHpvcl9wcmVmaXgpOworCWlmIChsem9fbGVuID4g
Km91dGxlbikKIAkJcmV0dXJuIC1FRkJJRzsKIAogCS8qIFRlbXBvcmFyeSBidWZmZXIgc2FtZSBz
aXplIGFzIHRoZSBvdXRidWYgKi8KLQl0ZW1wYnVmID0ga21hbGxvYygqb3V0bGVuLCBHRlBfS0VS
TkVMKTsKKwl0ZW1wbGVuID0gKm91dGxlbjsKKwl0ZW1wYnVmID0ga21hbGxvYyh0ZW1wbGVuLCBH
RlBfS0VSTkVMKTsKIAlpZiAoIW91dGJ1ZikKIAkJcmV0dXJuIC1FTk9NRU07CiAKQEAgLTUwMSw0
MSArNTAzLDU0IEBAIHN0YXRpYyBpbnQgaGNfd2xhbl9kYXRhX3VucGFja19sem9yKGNvbnN0IHU4
ICppbmJ1Ziwgc2l6ZV90IGlubGVuLAogCW1lbWNweShvdXRidWYsIGhjX2x6b3JfcHJlZml4LCBz
aXplb2YoaGNfbHpvcl9wcmVmaXgpKTsKIAltZW1jcHkob3V0YnVmICsgc2l6ZW9mKGhjX2x6b3Jf
cHJlZml4KSwgaW5idWYsIGlubGVuKTsKIAotCS8qIExaTy1kZWNvbXByZXNzIHRlbXBsZW4gYnl0
ZXMgb2Ygb3V0YnVmIGludG8gdGhlIHRlbXBidWYgKi8KLQlyZXQgPSBsem8xeF9kZWNvbXByZXNz
X3NhZmUob3V0YnVmLCB0ZW1wbGVuLCB0ZW1wYnVmLCBvdXRsZW4pOworCS8qIExaTy1kZWNvbXBy
ZXNzIGx6b19sZW4gYnl0ZXMgb2Ygb3V0YnVmIGludG8gdGhlIHRlbXBidWYgKi8KKwlyZXQgPSBs
em8xeF9kZWNvbXByZXNzX3NhZmUob3V0YnVmLCBsem9fbGVuLCB0ZW1wYnVmLCAmdGVtcGxlbik7
CiAJaWYgKHJldCkgewotCQlwcl9kZWJ1ZyhSQl9IQ19QUl9QRlggIkxaTyBkZWNvbXByZXNzaW9u
IGVycm9yICglZClcbiIsIHJldCk7Ci0JCWdvdG8gZmFpbDsKKwkJaWYgKExaT19FX0lOUFVUX05P
VF9DT05TVU1FRCA9PSByZXQpIHsKKwkJCS8qCisJCQkgKiBJdCBpcyBhc3N1bWVkIHRoYXQgYmVj
YXVzZSB0aGUgTFpPIHBheWxvYWQgaXMgZW1iZWRkZWQKKwkJCSAqIGluIGEgInJvb3QiIFJCX0lE
X1dMQU5fREFUQSB0YWcsIHRoZSB0YWcgbGVuZ3RoIGlzIGFsaWduZWQKKwkJCSAqIGFuZCB0aGUg
cGF5bG9hZCBpcyBwYWRkZWQgYXQgdGhlIGVuZCwgd2hpY2ggdHJpZ2dlcnMgYQorCQkJICogc3B1
cmlvdXMgZXJyb3Igd2hpY2ggd2UgaWdub3JlIGhlcmUuCisJCQkgKi8KKwkJCXByX2RlYnVnKFJC
X0hDX1BSX1BGWCAiTFpPUjogTFpPIEVPRiBiZWZvcmUgYnVmZmVyIGVuZCAtIHRoaXMgbWF5IGJl
IGhhcm1sZXNzXG4iKTsKKwkJfSBlbHNlIHsKKwkJCXByX2RlYnVnKFJCX0hDX1BSX1BGWCAiTFpP
UjogTFpPIGRlY29tcHJlc3Npb24gZXJyb3IgKCVkKVxuIiwgcmV0KTsKKwkJCWdvdG8gZmFpbDsK
KwkJfQogCX0KLQl0ZW1wbGVuID0gKm91dGxlbjsKIAogCS8qCiAJICogUG9zdCBkZWNvbXByZXNz
aW9uIHdlIGhhdmUgYSBibG9iIChwb3NzaWJseSBieXByb2R1Y3Qgb2YgdGhlIGx6bwogCSAqIGRp
Y3Rpb25hcnkpLiBXZSBuZWVkIHRvIGZpbmQgUkJfTUFHSUNfRVJELiBUaGUgbWFnaWMgbnVtYmVy
IHNlZW1zIHRvCiAJICogYmUgMzJiaXQtYWxpZ25lZCBpbiB0aGUgZGVjb21wcmVzc2lvbiBvdXRw
dXQuCiAJICovCi0KLQl3aGlsZSAoUkJfTUFHSUNfRVJEICE9ICoodTMyICopdGVtcGJ1Zikgewot
CQl0ZW1wYnVmICs9IDQ7Ci0JCXRlbXBsZW4gLT0gNDsKLQl9CisJbmVlZGxlID0gKGNvbnN0IHUz
MiAqKXRlbXBidWY7CisJd2hpbGUgKFJCX01BR0lDX0VSRCAhPSAqbmVlZGxlKyspIHsKKwkJaWYg
KCh1OCAqKW5lZWRsZSA+PSB0ZW1wYnVmK3RlbXBsZW4pIHsKKwkJCXByX2RlYnVnKFJCX0hDX1BS
X1BGWCAiTFpPUjogRVJEIG1hZ2ljIG5vdCBmb3VuZFxuIik7CisJCQlnb3RvIGZhaWw7CisJCX0K
Kwl9OworCXRlbXBsZW4gLT0gKHU4ICopbmVlZGxlIC0gdGVtcGJ1ZjsKIAogCS8qIFBhc3QgbWFn
aWMuIExvb2sgZm9yIHRhZyBub2RlICovCi0JcmV0ID0gcm91dGVyYm9vdF90YWdfZmluZCh0ZW1w
YnVmLCB0ZW1wbGVuLCAweDEsICZybGVfb2ZzLCAmcmxlX2xlbik7CisJcmV0ID0gcm91dGVyYm9v
dF90YWdfZmluZCgodTggKiluZWVkbGUsIHRlbXBsZW4sIDB4MSwgJnJsZV9vZnMsICZybGVfbGVu
KTsKIAlpZiAocmV0KSB7Ci0JCXByX2RlYnVnKFJCX0hDX1BSX1BGWCAiUkxFIGRhdGEgbm90IGZv
dW5kXG4iKTsKKwkJcHJfZGVidWcoUkJfSENfUFJfUEZYICJMWk9SOiBSTEUgZGF0YSBub3QgZm91
bmRcbiIpOwogCQlnb3RvIGZhaWw7CiAJfQogCiAJaWYgKHJsZV9sZW4gPiB0ZW1wbGVuKSB7Ci0J
CXByX2RlYnVnKFJCX0hDX1BSX1BGWCAiSW52YWxpZCBSTEUgZGF0YSBsZW5ndGhcbiIpOworCQlw
cl9kZWJ1ZyhSQl9IQ19QUl9QRlggIkxaT1I6IEludmFsaWQgUkxFIGRhdGEgbGVuZ3RoXG4iKTsK
KwkJcmV0ID0gLUVJTlZBTDsKIAkJZ290byBmYWlsOwogCX0KIAotCS8qIFJMRS1kZWNvZGUgdGVt
cGJ1ZiBiYWNrIGludG8gdGhlIG91dGJ1ZiAqLwotCXJldCA9IHJvdXRlcmJvb3RfcmxlX2RlY29k
ZSh0ZW1wYnVmK3JsZV9vZnMsIHJsZV9sZW4sIG91dGJ1Ziwgb3V0bGVuKTsKKwkvKiBSTEUtZGVj
b2RlIHRlbXBidWYgZnJvbSBuZWVkbGUgYmFjayBpbnRvIHRoZSBvdXRidWYgKi8KKwlyZXQgPSBy
b3V0ZXJib290X3JsZV9kZWNvZGUoKHU4ICopbmVlZGxlK3JsZV9vZnMsIHJsZV9sZW4sIG91dGJ1
Ziwgb3V0bGVuKTsKIAlpZiAocmV0KQotCQlwcl9kZWJ1ZyhSQl9IQ19QUl9QRlggIlJMRSBkZWNv
ZGluZyBlcnJvciAoJWQpXG4iLCByZXQpOworCQlwcl9kZWJ1ZyhSQl9IQ19QUl9QRlggIkxaT1I6
IFJMRSBkZWNvZGluZyBlcnJvciAoJWQpXG4iLCByZXQpOwogCiBmYWlsOgogCWtmcmVlKHRlbXBi
dWYpOwotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
