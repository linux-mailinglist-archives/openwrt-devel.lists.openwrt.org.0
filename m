Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D9F1D61D8
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 17:12:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZGXvDHn0U6jlCFBlhr7y8THYbRO5ExElkt3qVpI9szM=; b=d8tdVWGLXB+aTK
	/C/d6WaRnKFApVeuceuW3VSFUZh/LPhIc+f0Jp5Sm0QRFfw5YaO9+PDxvftDcSYZ0Rj2OqN5M7xW/
	0k3G2NmpE5niv2a9enc2NRRMGd0ZhMC/VCaVrItfXJjBGLQivk7gwKODGFsWtoQ5szDd/kA57yKMF
	h7NnmgldgNeqUaP2qRZ+gqzEt7baNPn153hAW//tRRwbx+HF4ggIeAsUsdP8y5bRbN9jxDqTq1wHm
	ipYd/QLoNmK89RO60Js6tOW+QDK7HzN9adwtadPND6WlzEkZO30cJYifpwWYP5kgG/vgii7N8y1HK
	Owbuo4uHSAPhcVMv+arQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZyUK-0000OG-S3; Sat, 16 May 2020 15:12:32 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZyU8-0000Mx-Ub
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 15:12:25 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 9A16260075;
 Sat, 16 May 2020 17:12:15 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 9A16260075
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 9A16260075
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1589641936; bh=t3n/s5+PcIG7YcBnquDCccjCc4ieGpJDY7qro0Wy+uQ=;
 h=From:To:Cc:Subject:Date:From;
 b=tFUEU9Z2RXoRJ+iKX1e2zk9w5Hd8b7XsqPhMWijhBmQ9owljVIj+pMEOtOh2M93Qd
 Wlg8H8kIlgpRXqtzbe6u6OLZt4qYeErUj8E5ksn+466fWLOgXHy16ji4fbGvsDFfPE
 q9/9Y1tgzoHxawCw3t/WZOsMR8iebuPWC9fsLWSQ=
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 16 May 2020 17:12:14 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 17:12:06 +0200
Message-Id: <20200516151206.60400-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_081221_307378_A19F12DC 
X-CRM114-Status: GOOD (  18.00  )
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
Subject: [OpenWrt-Devel] [PATCH v2] generic: platform/mikrotik: fix LZOR
 support
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
cnQub3JnPgoKRml4ZXM6IDMxZTk5ZmUzZGEgKCJnZW5lcmljOiBwbGF0Zm9ybS9taWtyb3Rpazog
c3VwcG9ydCBMWk9SIGVuY29kaW5nIikKLS0tCiAuLi4vZHJpdmVycy9wbGF0Zm9ybS9taWtyb3Rp
ay9yYl9oYXJkY29uZmlnLmMgICAgICB8IDU3ICsrKysrKysrKysrKysrLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS90YXJnZXQvbGludXgvZ2VuZXJpYy9maWxlcy9kcml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL3Ji
X2hhcmRjb25maWcuYyBiL3RhcmdldC9saW51eC9nZW5lcmljL2ZpbGVzL2RyaXZlcnMvcGxhdGZv
cm0vbWlrcm90aWsvcmJfaGFyZGNvbmZpZy5jCmluZGV4IDI2MjE4ZDZhN2QuLjkzYzczMWE1ZjAg
MTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9nZW5lcmljL2ZpbGVzL2RyaXZlcnMvcGxhdGZvcm0v
bWlrcm90aWsvcmJfaGFyZGNvbmZpZy5jCisrKyBiL3RhcmdldC9saW51eC9nZW5lcmljL2ZpbGVz
L2RyaXZlcnMvcGxhdGZvcm0vbWlrcm90aWsvcmJfaGFyZGNvbmZpZy5jCkBAIC0zNiw3ICszNiw3
IEBACiAKICNpbmNsdWRlICJyb3V0ZXJib290LmgiCiAKLSNkZWZpbmUgUkJfSEFSRENPTkZJR19W
RVIJCSIwLjAyIgorI2RlZmluZSBSQl9IQVJEQ09ORklHX1ZFUgkJIjAuMDMiCiAjZGVmaW5lIFJC
X0hDX1BSX1BGWAkJCSJbcmJfaGFyZGNvbmZpZ10gIgogCiAvKiBJRCB2YWx1ZXMgZm9yIGhhcmR3
YXJlIHNldHRpbmdzICovCkBAIC00ODQsMTYgKzQ4NCwxOCBAQCBzdGF0aWMgaW50IGhjX3dsYW5f
ZGF0YV91bnBhY2tfbHpvcihjb25zdCB1OCAqaW5idWYsIHNpemVfdCBpbmxlbiwKIAkJCQkgICAg
dm9pZCAqb3V0YnVmLCBzaXplX3QgKm91dGxlbikKIHsKIAl1MTYgcmxlX29mcywgcmxlX2xlbjsK
LQlzaXplX3QgdGVtcGxlbjsKKwljb25zdCB1MzIgKm5lZWRsZTsKIAl1OCAqdGVtcGJ1ZjsKKwlz
aXplX3QgdGVtcGxlbiwgbHpvX2xlbjsKIAlpbnQgcmV0OwogCi0JdGVtcGxlbiA9IGlubGVuICsg
c2l6ZW9mKGhjX2x6b3JfcHJlZml4KTsKLQlpZiAodGVtcGxlbiA+ICpvdXRsZW4pCisJbHpvX2xl
biA9IGlubGVuICsgc2l6ZW9mKGhjX2x6b3JfcHJlZml4KTsKKwlpZiAobHpvX2xlbiA+ICpvdXRs
ZW4pCiAJCXJldHVybiAtRUZCSUc7CiAKIAkvKiBUZW1wb3JhcnkgYnVmZmVyIHNhbWUgc2l6ZSBh
cyB0aGUgb3V0YnVmICovCi0JdGVtcGJ1ZiA9IGttYWxsb2MoKm91dGxlbiwgR0ZQX0tFUk5FTCk7
CisJdGVtcGxlbiA9ICpvdXRsZW47CisJdGVtcGJ1ZiA9IGttYWxsb2ModGVtcGxlbiwgR0ZQX0tF
Uk5FTCk7CiAJaWYgKCFvdXRidWYpCiAJCXJldHVybiAtRU5PTUVNOwogCkBAIC01MDEsNDEgKzUw
Myw1NCBAQCBzdGF0aWMgaW50IGhjX3dsYW5fZGF0YV91bnBhY2tfbHpvcihjb25zdCB1OCAqaW5i
dWYsIHNpemVfdCBpbmxlbiwKIAltZW1jcHkob3V0YnVmLCBoY19sem9yX3ByZWZpeCwgc2l6ZW9m
KGhjX2x6b3JfcHJlZml4KSk7CiAJbWVtY3B5KG91dGJ1ZiArIHNpemVvZihoY19sem9yX3ByZWZp
eCksIGluYnVmLCBpbmxlbik7CiAKLQkvKiBMWk8tZGVjb21wcmVzcyB0ZW1wbGVuIGJ5dGVzIG9m
IG91dGJ1ZiBpbnRvIHRoZSB0ZW1wYnVmICovCi0JcmV0ID0gbHpvMXhfZGVjb21wcmVzc19zYWZl
KG91dGJ1ZiwgdGVtcGxlbiwgdGVtcGJ1Ziwgb3V0bGVuKTsKKwkvKiBMWk8tZGVjb21wcmVzcyBs
em9fbGVuIGJ5dGVzIG9mIG91dGJ1ZiBpbnRvIHRoZSB0ZW1wYnVmICovCisJcmV0ID0gbHpvMXhf
ZGVjb21wcmVzc19zYWZlKG91dGJ1ZiwgbHpvX2xlbiwgdGVtcGJ1ZiwgJnRlbXBsZW4pOwogCWlm
IChyZXQpIHsKLQkJcHJfZGVidWcoUkJfSENfUFJfUEZYICJMWk8gZGVjb21wcmVzc2lvbiBlcnJv
ciAoJWQpXG4iLCByZXQpOwotCQlnb3RvIGZhaWw7CisJCWlmIChMWk9fRV9JTlBVVF9OT1RfQ09O
U1VNRUQgPT0gcmV0KSB7CisJCQkvKgorCQkJICogSXQgaXMgYXNzdW1lZCB0aGF0IGJlY2F1c2Ug
dGhlIExaTyBwYXlsb2FkIGlzIGVtYmVkZGVkCisJCQkgKiBpbiBhICJyb290IiBSQl9JRF9XTEFO
X0RBVEEgdGFnLCB0aGUgdGFnIGxlbmd0aCBpcyBhbGlnbmVkCisJCQkgKiBhbmQgdGhlIHBheWxv
YWQgaXMgcGFkZGVkIGF0IHRoZSBlbmQsIHdoaWNoIHRyaWdnZXJzIGEKKwkJCSAqIHNwdXJpb3Vz
IGVycm9yIHdoaWNoIHdlIGlnbm9yZSBoZXJlLgorCQkJICovCisJCQlwcl9kZWJ1ZyhSQl9IQ19Q
Ul9QRlggIkxaT1I6IExaTyBFT0YgYmVmb3JlIGJ1ZmZlciBlbmQgLSB0aGlzIG1heSBiZSBoYXJt
bGVzc1xuIik7CisJCX0gZWxzZSB7CisJCQlwcl9kZWJ1ZyhSQl9IQ19QUl9QRlggIkxaT1I6IExa
TyBkZWNvbXByZXNzaW9uIGVycm9yICglZClcbiIsIHJldCk7CisJCQlnb3RvIGZhaWw7CisJCX0K
IAl9Ci0JdGVtcGxlbiA9ICpvdXRsZW47CiAKIAkvKgogCSAqIFBvc3QgZGVjb21wcmVzc2lvbiB3
ZSBoYXZlIGEgYmxvYiAocG9zc2libHkgYnlwcm9kdWN0IG9mIHRoZSBsem8KIAkgKiBkaWN0aW9u
YXJ5KS4gV2UgbmVlZCB0byBmaW5kIFJCX01BR0lDX0VSRC4gVGhlIG1hZ2ljIG51bWJlciBzZWVt
cyB0bwogCSAqIGJlIDMyYml0LWFsaWduZWQgaW4gdGhlIGRlY29tcHJlc3Npb24gb3V0cHV0Lgog
CSAqLwotCi0Jd2hpbGUgKFJCX01BR0lDX0VSRCAhPSAqKHUzMiAqKXRlbXBidWYpIHsKLQkJdGVt
cGJ1ZiArPSA0OwotCQl0ZW1wbGVuIC09IDQ7Ci0JfQorCW5lZWRsZSA9IChjb25zdCB1MzIgKil0
ZW1wYnVmOworCXdoaWxlIChSQl9NQUdJQ19FUkQgIT0gKm5lZWRsZSsrKSB7CisJCWlmICgodTgg
KiluZWVkbGUgPj0gdGVtcGJ1Zit0ZW1wbGVuKSB7CisJCQlwcl9kZWJ1ZyhSQl9IQ19QUl9QRlgg
IkxaT1I6IEVSRCBtYWdpYyBub3QgZm91bmRcbiIpOworCQkJZ290byBmYWlsOworCQl9CisJfTsK
Kwl0ZW1wbGVuIC09ICh1OCAqKW5lZWRsZSAtIHRlbXBidWY7CiAKIAkvKiBQYXN0IG1hZ2ljLiBM
b29rIGZvciB0YWcgbm9kZSAqLwotCXJldCA9IHJvdXRlcmJvb3RfdGFnX2ZpbmQodGVtcGJ1Ziwg
dGVtcGxlbiwgMHgxLCAmcmxlX29mcywgJnJsZV9sZW4pOworCXJldCA9IHJvdXRlcmJvb3RfdGFn
X2ZpbmQoKHU4ICopbmVlZGxlLCB0ZW1wbGVuLCAweDEsICZybGVfb2ZzLCAmcmxlX2xlbik7CiAJ
aWYgKHJldCkgewotCQlwcl9kZWJ1ZyhSQl9IQ19QUl9QRlggIlJMRSBkYXRhIG5vdCBmb3VuZFxu
Iik7CisJCXByX2RlYnVnKFJCX0hDX1BSX1BGWCAiTFpPUjogUkxFIGRhdGEgbm90IGZvdW5kXG4i
KTsKIAkJZ290byBmYWlsOwogCX0KIAogCWlmIChybGVfbGVuID4gdGVtcGxlbikgewotCQlwcl9k
ZWJ1ZyhSQl9IQ19QUl9QRlggIkludmFsaWQgUkxFIGRhdGEgbGVuZ3RoXG4iKTsKKwkJcHJfZGVi
dWcoUkJfSENfUFJfUEZYICJMWk9SOiBJbnZhbGlkIFJMRSBkYXRhIGxlbmd0aFxuIik7CisJCXJl
dCA9IC1FSU5WQUw7CiAJCWdvdG8gZmFpbDsKIAl9CiAKLQkvKiBSTEUtZGVjb2RlIHRlbXBidWYg
YmFjayBpbnRvIHRoZSBvdXRidWYgKi8KLQlyZXQgPSByb3V0ZXJib290X3JsZV9kZWNvZGUodGVt
cGJ1ZitybGVfb2ZzLCBybGVfbGVuLCBvdXRidWYsIG91dGxlbik7CisJLyogUkxFLWRlY29kZSB0
ZW1wYnVmIGZyb20gbmVlZGxlIGJhY2sgaW50byB0aGUgb3V0YnVmICovCisJcmV0ID0gcm91dGVy
Ym9vdF9ybGVfZGVjb2RlKCh1OCAqKW5lZWRsZStybGVfb2ZzLCBybGVfbGVuLCBvdXRidWYsIG91
dGxlbik7CiAJaWYgKHJldCkKLQkJcHJfZGVidWcoUkJfSENfUFJfUEZYICJSTEUgZGVjb2Rpbmcg
ZXJyb3IgKCVkKVxuIiwgcmV0KTsKKwkJcHJfZGVidWcoUkJfSENfUFJfUEZYICJMWk9SOiBSTEUg
ZGVjb2RpbmcgZXJyb3IgKCVkKVxuIiwgcmV0KTsKIAogZmFpbDoKIAlrZnJlZSh0ZW1wYnVmKTsK
LS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
