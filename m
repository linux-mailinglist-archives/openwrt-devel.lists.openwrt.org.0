Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59C1A3101
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 09:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FvmWb1Mug87fjGWIddq1+qLvD6147i98DbdhCIh+hzE=; b=lwiu57oIAXleqk
	vdTCJ0t8VQmiv5hvlHXdvqbv4BmfxfcCPDpoCZmbGaokc3LvMOVWvOFOEyiU8vuHvcVZLJzTyImU2
	zwqqfNDaR1/N/Ggy9LOOShcJWCwDXkXI7YT8XOBzm3QABgPi9A3+7b9pWAJeJ+b0OitphZmTG9VXI
	zgDR9uTZ5cvKdJF9w9JH5qjnXqG+XGJLDwdtJx5qRFXX/UhrqCiN1LNTVjiq7cfQiN4ExaOJX3KY4
	baPC7MGuGNqGqSti+M6b4rJTe9sHM/InT8clQtQo7XDk2qkDhZTuoKfZcwGh+iq1RgxZ/W6R0JYWE
	O6MhUKVcgIx2D7MvTdpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bLX-00056e-1H; Fri, 30 Aug 2019 07:29:23 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bL1-0004wr-8x
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 07:28:52 +0000
Received: by mail-lj1-x241.google.com with SMTP id z17so5564709ljz.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 30 Aug 2019 00:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dn8F8Z7j0HgsuUfhRaTsiQa3x95T7ITvLRFjhPYO9Zo=;
 b=h37CrcHo0wYg9xYTO/bww/qgLfvp6mSbkFO82WoOejT+jdrmubp8Es7ZykEpLfvGXt
 fgP3DMoP6aIj7g98h98MiGK6vAN4fwfstNXru7KejroGXjNA5gf4Tskp+AiOGUFIVn2Q
 Gobt8hMWtfp2npGgX7CDDKe6Gn8rFg8+kvDd279D4RwMyZDTbI36pXrUoLePVOUo0lY5
 x2xJ3VdWKXdZAj4cr01t1iR06006rw8LhwGkIzbrZskHofN8B2EKK2a2prLu9whNtdpO
 IHI0n9eqh+EGJOUY3uAPi8SXm4zLD5xLi6kfqEGWA8sBGUsyMA8m2MvnK0OQniYURfig
 FAWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dn8F8Z7j0HgsuUfhRaTsiQa3x95T7ITvLRFjhPYO9Zo=;
 b=SOKnCcW7CQCwxJITX8PdXsWX47MAB9MvackEvYZ52uOUoftopxICrWETZo87/qTPya
 Ig/om14AjFHiQYaidYFICasEdl2pQy0m9NNF9SJMZfCf9xXgX4aGXO4GwzJPM/SylXHy
 pimrVksqxG6GMkYMI2CkyjlIag4BV/Vkj6hBgsbPq1dKNfQYAaEKqzvrKw0KywaBujL0
 yRdlHVJVXkfn4PI5Gsgz5uJUA/Susp8Iun4Q77r9EZNfQPNJmUDAe7xuX5vPkO+QBOH6
 2xQxz8kQ4Z/UtFA5fyFCUeMgfkAMmhWr1lgmKghdhSUMJWgapTqbfE3ALhDNTzJqSFXU
 tiNw==
X-Gm-Message-State: APjAAAWqD/lTcES9gqF8BJ9WtxHXm4lYAT2d+2vakhZtvMmnbYtsyk0D
 rl8VMMi3QM4u0fJqtzl//8mMN/EF
X-Google-Smtp-Source: APXvYqwO8Ec4EHszcM/Ro/4PmlUMSHnstEGFW3UC+WDjj7Y5YZ4i95lHcfZqi0NgPIK0rzHIQFxC+w==
X-Received: by 2002:a2e:7001:: with SMTP id l1mr1426702ljc.48.1567150129010;
 Fri, 30 Aug 2019 00:28:49 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id f18sm707728ljj.60.2019.08.30.00.28.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 00:28:48 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	John Crispin <john@phrozen.org>
Date: Fri, 30 Aug 2019 09:28:34 +0200
Message-Id: <20190830072834.23213-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_002851_380716_4F5FEA08 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH procd] system: add "validate_firmware_image"
 ubus method
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
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBuZXcgbWV0aG9k
IGFsbG93cyB2YWxpZGF0aW5nIGZpcm13YXJlIGltYWdlIChzdG9yZWQgb24gYSBkZXZpY2UpCnVz
aW5nIHVidXMuIEl0IHVzZXMgbmV3IGV4ZWN1dGFibGUgaGVscGVyIHRoYXQgcHJvdmlkZXMgZGV0
YWlsZWQgaW5mbwphYm91dCBmaXJtd2FyZSBpbWFnZS4KClRoZSBwb2ludCBvZiB0aGlzIG1ldGhv
ZCBpcyB0byBhbGxvdyB1c2VyIGludGVyZmFjZXMgcHJvdmlkZSB2YXJpb3VzCmluZm8gYmVmb3Jl
IHN0YXJ0aW5nIGFjdHVhbCB1cGdyYWRlIHByb2Nlc3MuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIg
TWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQogc3lzdGVtLmMgfCAxMTMgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDExMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc3lzdGVtLmMgYi9zeXN0ZW0u
YwppbmRleCA3MzhmMzI3Li4zNWQ1YTIzIDEwMDY0NAotLS0gYS9zeXN0ZW0uYworKysgYi9zeXN0
ZW0uYwpAQCAtMjUsNiArMjUsOCBAQAogI2luY2x1ZGUgPHVuaXN0ZC5oPgogI2luY2x1ZGUgPHN0
ZGxpYi5oPgogCisjaW5jbHVkZSA8anNvbi1jL2pzb25fdG9rZW5lci5oPgorI2luY2x1ZGUgPGxp
YnVib3gvYmxvYm1zZ19qc29uLmg+CiAjaW5jbHVkZSA8bGlidWJveC91bG9vcC5oPgogCiAjaW5j
bHVkZSAicHJvY2QuaCIKQEAgLTM3Niw2ICszNzgsMTE2IEBAIHN0YXRpYyBpbnQgcHJvY19zaWdu
YWwoc3RydWN0IHVidXNfY29udGV4dCAqY3R4LCBzdHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKIAly
ZXR1cm4gMDsKIH0KIAorLyoqCisgKiB2YWxpZGF0ZV9maXJtd2FyZV9pbWFnZV9jYWxsIC0gcGVy
Zm9ybSB2YWxpZGF0aW9uICYgc3RvcmUgcmVzdWx0IGluIGdsb2JhbCBiCisgKgorICogQGZpbGU6
IGZpcm13YXJlIGltYWdlIHBhdGgKKyAqLworc3RhdGljIGludCB2YWxpZGF0ZV9maXJtd2FyZV9p
bWFnZV9jYWxsKGNvbnN0IGNoYXIgKmZpbGUpCit7CisJY29uc3QgY2hhciAqcGF0aCA9ICIvdXNy
L2xpYmV4ZWMvdmFsaWRhdGVfZmlybXdhcmVfaW1hZ2UiOworCWpzb25fdG9rZW5lciAqdG9rOwor
CWpzb25fb2JqZWN0ICpqc29iajsKKwljaGFyIGJ1Zls2NF07CisJc3NpemVfdCBsZW47CisJaW50
IGZkc1syXTsKKwlpbnQgZXJyOworCWludCBmZDsKKworCWlmIChwaXBlKGZkcykpCisJCXJldHVy
biAtZXJybm87CisKKwlzd2l0Y2ggKGZvcmsoKSkgeworCWNhc2UgLTE6CisJCXJldHVybiAtZXJy
bm87CisJY2FzZSAwOgorCQkvKiBTZXQgc3RkaW4gJiBzdGRlcnIgdG8gL2Rldi9udWxsICovCisJ
CWlmIChmZCA+PSAwKSB7CisJCQlkdXAyKGZkLCAwKTsKKwkJCWR1cDIoZmQsIDIpOworCQkJY2xv
c2UoZmQpOworCQl9CisKKwkJLyogU2V0IHN0ZG91dCB0byB0aGUgc2hhcmVkIHBpcGUgKi8KKwkJ
ZHVwMihmZHNbMV0sIDEpOworCQljbG9zZShmZHNbMF0pOworCQljbG9zZShmZHNbMV0pOworCisJ
CWV4ZWNsKHBhdGgsIHBhdGgsIGZpbGUsIE5VTEwpOworCQlleGl0KGVycm5vKTsKKwl9CisKKwkv
KiBQYXJlbnQgcHJvY2VzcyAqLworCisJdG9rID0ganNvbl90b2tlbmVyX25ldygpOworCWlmICgh
dG9rKSB7CisJCWNsb3NlKGZkc1swXSk7CisJCWNsb3NlKGZkc1sxXSk7CisJCXJldHVybiAtRU5P
TUVNOworCX0KKworCWJsb2JfYnVmX2luaXQoJmIsIDApOworCXdoaWxlICgobGVuID0gcmVhZChm
ZHNbMF0sIGJ1Ziwgc2l6ZW9mKGJ1ZikpKSkgeworCQlqc29iaiA9IGpzb25fdG9rZW5lcl9wYXJz
ZV9leCh0b2ssIGJ1ZiwgbGVuKTsKKworCQlpZiAoanNvbl90b2tlbmVyX2dldF9lcnJvcih0b2sp
ID09IGpzb25fdG9rZW5lcl9zdWNjZXNzKQorCQkJYnJlYWs7CisJCWVsc2UgaWYgKGpzb25fdG9r
ZW5lcl9nZXRfZXJyb3IodG9rKSA9PSBqc29uX3Rva2VuZXJfY29udGludWUpCisJCQljb250aW51
ZTsKKwkJZWxzZQorCQkJZnByaW50ZihzdGRlcnIsICJGYWlsZWQgdG8gcGFyc2UgSlNPTjogJWRc
biIsCisJCQkJanNvbl90b2tlbmVyX2dldF9lcnJvcih0b2spKTsKKwl9CisKKwljbG9zZShmZHNb
MF0pOworCWNsb3NlKGZkc1sxXSk7CisKKwllcnIgPSAtRU5PRU5UOworCWlmIChqc29iaikgewor
CQlpZiAoanNvbl9vYmplY3RfZ2V0X3R5cGUoanNvYmopID09IGpzb25fdHlwZV9vYmplY3QpIHsK
KwkJCWJsb2Jtc2dfYWRkX29iamVjdCgmYiwganNvYmopOworCQkJZXJyID0gMDsKKwkJfQorCisJ
CWpzb25fb2JqZWN0X3B1dChqc29iaik7CisJfQorCisJanNvbl90b2tlbmVyX2ZyZWUodG9rKTsK
KworCXJldHVybiBlcnI7Cit9CisKK2VudW0geworCVZBTElEQVRFX0ZJUk1XQVJFX0lNQUdFX1BB
VEgsCisJX19WQUxJREFURV9GSVJNV0FSRV9JTUFHRV9NQVgsCit9OworCitzdGF0aWMgY29uc3Qg
c3RydWN0IGJsb2Jtc2dfcG9saWN5IHZhbGlkYXRlX2Zpcm13YXJlX2ltYWdlX3BvbGljeVtfX1ZB
TElEQVRFX0ZJUk1XQVJFX0lNQUdFX01BWF0gPSB7CisJW1ZBTElEQVRFX0ZJUk1XQVJFX0lNQUdF
X1BBVEhdID0geyAubmFtZSA9ICJwYXRoIiwgLnR5cGUgPSBCTE9CTVNHX1RZUEVfU1RSSU5HIH0s
Cit9OworCitzdGF0aWMgaW50IHZhbGlkYXRlX2Zpcm13YXJlX2ltYWdlKHN0cnVjdCB1YnVzX2Nv
bnRleHQgKmN0eCwKKwkJCQkgICBzdHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKKwkJCQkgICBzdHJ1
Y3QgdWJ1c19yZXF1ZXN0X2RhdGEgKnJlcSwKKwkJCQkgICBjb25zdCBjaGFyICptZXRob2QsIHN0
cnVjdCBibG9iX2F0dHIgKm1zZykKK3sKKwlzdHJ1Y3QgYmxvYl9hdHRyICp0YltfX1ZBTElEQVRF
X0ZJUk1XQVJFX0lNQUdFX01BWF07CisKKwlpZiAoIW1zZykKKwkJcmV0dXJuIFVCVVNfU1RBVFVT
X0lOVkFMSURfQVJHVU1FTlQ7CisKKwlibG9ibXNnX3BhcnNlKHZhbGlkYXRlX2Zpcm13YXJlX2lt
YWdlX3BvbGljeSwgX19WQUxJREFURV9GSVJNV0FSRV9JTUFHRV9NQVgsIHRiLCBibG9iX2RhdGEo
bXNnKSwgYmxvYl9sZW4obXNnKSk7CisJaWYgKCF0YltWQUxJREFURV9GSVJNV0FSRV9JTUFHRV9Q
QVRIXSkKKwkJcmV0dXJuIFVCVVNfU1RBVFVTX0lOVkFMSURfQVJHVU1FTlQ7CisKKwlpZiAodmFs
aWRhdGVfZmlybXdhcmVfaW1hZ2VfY2FsbChibG9ibXNnX2dldF9zdHJpbmcodGJbVkFMSURBVEVf
RklSTVdBUkVfSU1BR0VfUEFUSF0pKSkKKwkJcmV0dXJuIFVCVVNfU1RBVFVTX1VOS05PV05fRVJS
T1I7CisKKwl1YnVzX3NlbmRfcmVwbHkoY3R4LCByZXEsIGIuaGVhZCk7CisKKwlyZXR1cm4gVUJV
U19TVEFUVVNfT0s7Cit9CisKIGVudW0gewogCVNZU1VQR1JBREVfUEFUSCwKIAlTWVNVUEdSQURF
X1BSRUZJWCwKQEAgLTQyNiw2ICs1MzgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHVidXNfbWV0
aG9kIHN5c3RlbV9tZXRob2RzW10gPSB7CiAJVUJVU19NRVRIT0RfTk9BUkcoInJlYm9vdCIsIHN5
c3RlbV9yZWJvb3QpLAogCVVCVVNfTUVUSE9EKCJ3YXRjaGRvZyIsIHdhdGNoZG9nX3NldCwgd2F0
Y2hkb2dfcG9saWN5KSwKIAlVQlVTX01FVEhPRCgic2lnbmFsIiwgcHJvY19zaWduYWwsIHNpZ25h
bF9wb2xpY3kpLAorCVVCVVNfTUVUSE9EKCJ2YWxpZGF0ZV9maXJtd2FyZV9pbWFnZSIsIHZhbGlk
YXRlX2Zpcm13YXJlX2ltYWdlLCB2YWxpZGF0ZV9maXJtd2FyZV9pbWFnZV9wb2xpY3kpLAogCVVC
VVNfTUVUSE9EKCJzeXN1cGdyYWRlIiwgc3lzdXBncmFkZSwgc3lzdXBncmFkZV9wb2xpY3kpLAog
fTsKIAotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
