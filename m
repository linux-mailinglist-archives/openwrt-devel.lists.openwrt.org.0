Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BFA12BF55
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 22:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n/pwkBwNl37EJTMMiRJfnGImUHHOMGPDlTZ5RA2tMtc=; b=BGPH6BNwQO0jJ7
	MVNm8nnv8T9hzIXLcV2FBBgoqnu32F/m4fWCu0Ryhd69Hfi4pZwLBguqGB8F5ZiD8VmT89cZn2BdO
	vHgV1lP7O5irxJ7NGbFW8OlhvuBoa6KPRzCnuFSZQVc0eS1EEntSyrVkvTc3FiR1FqTQLPzNQvlAx
	/R+DdYmVQjgEfODMf/Qui/v9i7c80N9dln51PemUxOlKJBqs9BiHwdLY9MvfeWvyYHZg9BqVAglVh
	OyqpmPoireL/lEQ0auyBL8sRL9C/WLWirCv4g1Z2TppczxWgbhTIUrO6+7hM8CZAx44gzm4TZ+vkt
	HlcSVQiRHtevY292NjIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilJeJ-0000ci-T4; Sat, 28 Dec 2019 21:29:27 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilJeC-0000cI-GO
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 21:29:21 +0000
Received: by mail-lf1-x144.google.com with SMTP id y1so22935321lfb.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec 2019 13:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BWW6zo29GX6Vom0lOdd7wMcMLk7WZ33tC+Xf8NTrxNA=;
 b=aFKHB6q0+yKLk76R4lxiJV5cHXGfJg36T4Yb0MV7QfQhntdpooZW1UxIXUcom/Lmg6
 rU9vIsmIGMYTtJh+oXgjlfkDEXQYQlxSRmynQDxS4PPyibxUbg2iAS+7BVWRRAo1Vufh
 K7HKK/AqUBK0TvOdzJ6jYzXB30BRCZy8gJzoExzaOPAZSTbCiEp64+8mSn/apel4eZde
 hILUFzV1z2E0zcO3RADLD76LHPPR7CWPphhzOMASPcko3rXJ6TCrBOm+TGmLFH8OFUpj
 a1+ugG8s/Gx2RSLWmYy0k3VGX4ITyiZszdSCH2KpsHgiVMrp4EYW1MZJWOWDSz+Fu1cy
 aiQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BWW6zo29GX6Vom0lOdd7wMcMLk7WZ33tC+Xf8NTrxNA=;
 b=rs/qwkogsXMGPtt6h0mYUBKDVcuUMPqOXuMH2V+Zbz9Zyec6CMDCpP3qJrrPN0JK11
 hCEGNPDBae5iz9k8g43j5gBcQEyN0zusgz/syC7KeoOvNjAYn1Wb1uniq2LE3ibChUom
 GUv9EHjOsnI13jxeSwEisP7iUPx3LQG2BsLdPOcmnipqVwhauofqqqBnIfzVrG8RG4N8
 jre8hubt0hT4CycXzyZbKZZniOOTpEnpba2BI88/rIJY6LeUz8PZ98K03Sw9/Z1KOXcz
 wqeFA4Lf4UK46iBkkhT1+h3eZ2VXrRaTolFbATIu7AAMGxCodKb+warptLcVLvqQgKB1
 h1ow==
X-Gm-Message-State: APjAAAWBbNQgtw0e3F352XENNmEPH/f0Uid+KVnjkrDygS0n5MVF0Ku7
 jPc4BicaKR4addQV/Kt1qFzgXqQC
X-Google-Smtp-Source: APXvYqyJIwZAvPMnsvowpKkTlIvfX0r8V4hVzyXR2ccq0o+NxekE6SSpsEI4RnxUcYH15PZZYQly9A==
X-Received: by 2002:ac2:43a7:: with SMTP id t7mr30322462lfl.125.1577568558552; 
 Sat, 28 Dec 2019 13:29:18 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id t20sm9604530ljk.87.2019.12.28.13.29.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Dec 2019 13:29:17 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Dec 2019 22:29:03 +0100
Message-Id: <20191228212903.11660-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_132920_570223_F51EF2FB 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH fstools] blockd: print symlink error code
 and string message
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSXQgbWF5IGhlbHAgdW5k
ZXJzdGFuZGluZyBmYWlsdXJlIHJlYXNvbiwgZS5nLjoKYmxvY2tkOiBmYWlsZWQgdG8gc3ltbGlu
ayAvbW50L3NkYTEtPi90bXAvcnVuL2Jsb2NrZC9zZGExICgxNykgLSBGaWxlIGV4aXN0cwoKU2ln
bmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIGJsb2Nr
ZC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2Jsb2NrZC5jIGIvYmxvY2tkLmMKaW5kZXggZTA3NTMwYy4uYTA0
ZWE1YiAxMDA2NDQKLS0tIGEvYmxvY2tkLmMKKysrIGIvYmxvY2tkLmMKQEAgLTEzOCw3ICsxMzgs
NyBAQCBkZXZpY2VfYWRkKHN0cnVjdCBkZXZpY2UgKmRldmljZSkKIAogCXNucHJpbnRmKHBhdGgs
IHNpemVvZihwYXRoKSwgIi90bXAvcnVuL2Jsb2NrZC8lcyIsIGRldmljZS0+bmFtZSk7CiAJaWYg
KHN5bWxpbmsocGF0aCwgZGV2aWNlLT50YXJnZXQpKQotCQlVTE9HX0VSUigiZmFpbGVkIHRvIHN5
bWxpbmsgJXMtPiVzXG4iLCBkZXZpY2UtPnRhcmdldCwgcGF0aCk7CisJCVVMT0dfRVJSKCJmYWls
ZWQgdG8gc3ltbGluayAlcy0+JXMgKCVkKSAtICVtXG4iLCBkZXZpY2UtPnRhcmdldCwgcGF0aCwg
ZXJybm8pOwogCWVsc2UKIAkJYmxvY2soImF1dG9mcyIsICJhdmFpbGFibGUiLCBkZXZpY2UtPm5h
bWUpOwogfQpAQCAtMTU4LDcgKzE1OCw3IEBAIGRldmljZV9tb3ZlKHN0cnVjdCBkZXZpY2UgKmRl
dmljZV9vLCBzdHJ1Y3QgZGV2aWNlICpkZXZpY2VfbikKIAkJdW5saW5rKGRldmljZV9vLT50YXJn
ZXQpOwogCQlzbnByaW50ZihwYXRoLCBzaXplb2YocGF0aCksICIvdG1wL3J1bi9ibG9ja2QvJXMi
LCBkZXZpY2Vfbi0+bmFtZSk7CiAJCWlmIChzeW1saW5rKHBhdGgsIGRldmljZV9uLT50YXJnZXQp
KQotCQkJVUxPR19FUlIoImZhaWxlZCB0byBzeW1saW5rICVzLT4lc1xuIiwgZGV2aWNlX24tPnRh
cmdldCwgcGF0aCk7CisJCQlVTE9HX0VSUigiZmFpbGVkIHRvIHN5bWxpbmsgJXMtPiVzICglZCkg
LSAlbVxuIiwgZGV2aWNlX24tPnRhcmdldCwgcGF0aCwgZXJybm8pOwogCX0gZWxzZSB7CiAJCW1r
ZGlyKGRldmljZV9uLT50YXJnZXQsIDA3NTUpOwogCQlpZiAobW91bnQoZGV2aWNlX28tPnRhcmdl
dCwgZGV2aWNlX24tPnRhcmdldCwgTlVMTCwgTVNfTU9WRSwgTlVMTCkpCi0tIAoyLjIxLjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
