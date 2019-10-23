Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D450E211B
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 18:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tnMtEOw/t945bEABifOte9ZN7OUaUfl+jpZhBgzdAJc=; b=KeEjZyQRvzMa1q
	eHTqux9IyEclwQMvYA08sbIbGXoTDIgTnC5ia9+Ut+x5Cgqk34LFtFJA2GCZUP8t67+DRi7sI/m/P
	BqHF0Js1Bl995dMilE6F22YstD57Vqw9o2lnUMaQ/OwqblhX+MZD1bkPIQb148u6psopevID4pMTf
	+8685Ij8rdC/wgpmFRqMZDUdnt/p3YSUcgUnmjyqBEu11FVlZAmrTIRmKhgyXBnrrEFEL7hWNyn8O
	Q4J0M3bB6HTWSQqeNm0KfSIA36B4Woow2bsrTytw+teYoZ0YV8ju+AZ7PmnZS6BuSdzZHiIH6lrL1
	02INZ0GSUuY9bZIJjrdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJvB-0001iV-HI; Wed, 23 Oct 2019 16:55:41 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJuv-0001ZX-Mz
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 16:55:27 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 7010559484;
 Wed, 23 Oct 2019 09:55:15 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 09:55:01 -0700
Message-Id: <20191023165502.25906-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095525_747509_5EEF9D11 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: GL-AR300M series: Add I2C Support
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogSmVmZiBLbGV0c2t5IDxnaXQtY29tbWl0c0BhbGx5Y29tbS5jb20+CgpUaGUgR0wtQVIz
MDBNIHNlcmllcyBoYXZlIGFuIGludGVybmFsIGhlYWRlciBmb3IgSTJDLgoKUHJvdmlkZSBEVFMg
ZGVmaW5pdGlvbnMgZm9yIHRoZSBpMmMtZ3BpbyBkcml2ZXIuCgpUaGUgSTJDIGRyaXZlcnM7IGtt
b2QtaTJjLWNvcmUsIGttb2QtaTJjLWdwaW8KY29uc3VtZSB+MjAga0Igb2YgZmxhc2ggYW5kIGNh
biBiZSBsb2FkZWQgYXMgbW9kdWxlcywKCkRlZmF1bHQgY2xvY2sgbWVhc3VyZWQgfjExLjQgbXMg
cGVyaW9kLCB+ODgga0h6CgpUaGUgYm9hcmQgaGFzIHR3byBzZXRzIG9mICh1bnBvcHVsYXRlZCkg
aGVhZGVycy4gIFdoaWxlIGZhY2luZyB0aGUKYmFjayBvZiB0aGUgYm9hcmQgKGxvb2tpbmcgaW50
byB0aGUgRXRoZXJuZXQgamFja3MpLCBhbmQgbG9va2luZyBmcm9tCnRoZSB0b3AsIHRoZSBvbmUg
b24gdGhlIGxlZnQgZWRnZSBvZiB0aGUgYmFvcmQgd2l0aCBmb3VyIGhvbGVzIGlzIHRoZQpJMkMg
aGVhZGVyLiBJdCBhcHBlYXJzIHRvIGJlIGxhYmVsZWQgSjggb24gIkdMLUFSMzAwTS1WMS40LjAi
IGJvYXJkcy4KCiAgICB8IChQYXRjaCBhbnRlbm5hKQogICAgfAogICAgfAogICAgfCAgTyAgIEdO
RAogICAgfCAgTyAgIFNEQSAvIEdQSU8gMTcKICAgIHwgIE8gICBTQ0wgLyBHUElPIDE2CiAgICB8
ICDiiqEgICAzVjMgKHNxdWFyZSBsYW5kKQogICAgfAogICAgfCAoRXRoZXJuZXQgamFja3MpCgpo
dHRwczovL2RvY3MuZ2wtaW5ldC5jb20vZW4vMy9oYXJkd2FyZS9hcjMwMG0vI3BjYi1waW5vdXQg
c3RhdGVzCiJOb3RlOiBJMkMgaXMgbm90IHdvcmtpbmcgaW4gc29tZSBlYXJseSB2ZXJzaW9uIG9m
IHRoZSByb3V0ZXIuIgoKU2lnbmVkLW9mZi1ieTogSmVmZiBLbGV0c2t5IDxnaXQtY29tbWl0c0Bh
bGx5Y29tbS5jb20+Ci0tLQogdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTMxX2dsaW5ldF9n
bC1hcjMwMG0uZHRzaSB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTUzMV9nbGluZXRfZ2wt
YXIzMDBtLmR0c2kgYi90YXJnZXQvbGludXgvYXRoNzkvZHRzL3FjYTk1MzFfZ2xpbmV0X2dsLWFy
MzAwbS5kdHNpCmluZGV4IDI2N2YyZjQ3OGYuLmI3MmFhNjU1MjIgMTAwNjQ0Ci0tLSBhL3Rhcmdl
dC9saW51eC9hdGg3OS9kdHMvcWNhOTUzMV9nbGluZXRfZ2wtYXIzMDBtLmR0c2kKKysrIGIvdGFy
Z2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTMxX2dsaW5ldF9nbC1hcjMwMG0uZHRzaQpAQCAtNjAs
NiArNjAsMTMgQEAKIAkJCWxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJwaHkwdHB0IjsKIAkJfTsK
IAl9OworCisJaTJjOiBpMmMgeworCQljb21wYXRpYmxlID0gImkyYy1ncGlvIjsKKworCQlzZGEt
Z3Bpb3MgPSA8JmdwaW8gMTcgKEdQSU9fQUNUSVZFX0hJR0h8R1BJT19PUEVOX0RSQUlOKT47CisJ
CXNjbC1ncGlvcyA9IDwmZ3BpbyAxNiAoR1BJT19BQ1RJVkVfSElHSHxHUElPX09QRU5fRFJBSU4p
PjsKKwl9OwogfTsKIAogJnBjaWUwIHsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
