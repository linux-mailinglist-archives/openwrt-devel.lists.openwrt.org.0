Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9559E19E373
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 10:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nBY+PaGOt5y/DgSBhFVcu4PhUWYsrItxMnocwRzIj04=; b=qBmpocBXml4FHv
	33mt8WWWvQF5oNm/2KHBr2CZL9URio03xnmYgB1UPDqox7hRhtd4io/FEuvJY9IX9KhRHAOfOZm4W
	nhbsdFDDC0izHaI7IVe5LmZk7PkRaa5wVVBjSUZqKvbCaZTUqAjIlfbb60cQaShrbcRxdOSxleOvQ
	Y6o5Rz6DBKvWih2/3RkgIhWXPErGY05/DIcUa/aC2ESafMJTuFH2d7OxJOL7l5hewbi4wHhBvZ6S0
	MDTvvMW2AP9Shx3sAFETb+uPzZAAmo1jGnUmu6IWnwb3WSq+bGd+wEbeF4kIw1o+Uwf/TFMfiONCK
	bDxb+PRkp8p6lE7hU02w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKe9o-0001lE-IP; Sat, 04 Apr 2020 08:28:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKe9g-0001kW-In
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 08:27:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id j17so11158654wru.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 Apr 2020 01:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jiC2ttNG5OCSTFVzUzXfRz5kuhkD3gaTIUOynZAQ36M=;
 b=gKSWqjk/v43Sn4ZUtOtprXP7yZPhAojwYDlBSNObsqmoLmQ3toWrEZoQzIsOKF9N+V
 tQuqH8ai9TcuCxzygidJOVR00nlHhttmJF24U1e1D76TrS+Cq668wgrr/1gixo4gI5Wn
 XRxzjrJqKHKPsfUd+VmnwwOxKnt1DnbUMpWcU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jiC2ttNG5OCSTFVzUzXfRz5kuhkD3gaTIUOynZAQ36M=;
 b=Se2knTHcX/EhwrtpI6XWsnZSAujHgPT0yw+2mzmUs16QFxbaRdEMx/FVxBs7lwPbcE
 lxNqvVTc/fJJ4AC5J8k1FJ5hHFqG7oeBDTNxV4DhGIjFU34bIEIhu70T/EtDp02X0TZP
 QwkdfWN6GBuhzjnfd33uBa1D3qQI3C97cOQlktNWO2ZrGRb3R2AUFMzlFb2+avZSp8es
 ao6X39Lg9DGUTZ4rgi7bYZr+o2qbsVoCvwuzkpLTtYF3QUzYOo6XHSp1zI50QycIcLtB
 /8xdc6zo8XHxXU18svJRhzd8KLupS5Hjf5d+eOxD+7Ghge2hSozUvPWIj1JnPvIIBHKO
 bK/Q==
X-Gm-Message-State: AGi0PubW/HYD3Ekndmz05ayAjvhoxtfmAEOmeNghK8ghQoQ30+b1h8Qh
 rXyjElufzpAJd2S25RB1yHMpA97xVOM=
X-Google-Smtp-Source: APiQypJl4bDtVqFUXLmX32GGZBop8ZTMLQJWzLICEWzZEfc2c5rzjqD1R254BamauRjFKRxqFfS0TQ==
X-Received: by 2002:adf:e409:: with SMTP id g9mr9229167wrm.51.1585988865338;
 Sat, 04 Apr 2020 01:27:45 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id w15sm5238527wra.25.2020.04.04.01.27.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Apr 2020 01:27:44 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 Apr 2020 09:27:34 +0100
Message-Id: <20200404082734.79321-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.24.1 (Apple Git-126)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_012752_621569_59203214 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v1] umdns: suppress address-of-packed-member
 warning
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Z2NjIDggJiA5IGFwcGVhciB0byBiZSBtb3JlIHBpY2t5IHdpdGggcmVnYXJkcyBhY2Nlc3MgYWxp
Z25tZW50IHRvCnBhY2tlZCBzdHJ1Y3R1cmVzLCBsZWFkaW5nIHRvIHRoaXMgd2FybmluZyBpbiBk
bnMuYzoKCmRucy5jOjI2MToyOiBlcnJvcjogY29udmVydGluZyBhIHBhY2tlZCDigJhzdHJ1Y3Qg
ZG5zX3F1ZXN0aW9u4oCZIHBvaW50ZXIKKGFsaWdubWVudCAxKSB0byBhIOKAmHVpbnQxNl904oCZ
IHtha2Eg4oCYc2hvcnQgdW5zaWduZWQgaW504oCZfSBwb2ludGVyCihhbGlnbm1lbnQgMikgbWF5
IHJlc3VsdCBpbiBhbiB1bmFsaWduZWQgcG9pbnRlciB2YWx1ZQpbLVdlcnJvcj1hZGRyZXNzLW9m
LXBhY2tlZC1tZW1iZXJdCgoyNjEgfCAgdWludDE2X3QgKnN3YXAgPSAodWludDE2X3QgKikgcTsK
CldvcmsgYXJvdW5kIHdoYXQgSSB0aGluayBpcyBhIGZhbHNlIHBvc2l0aXZlIGJ5IHR1cm5pbmcg
dGhlIHdhcm5pbmcgb2ZmLgpOb3QgaWRlYWwsIGJ1dCBub3QgcXVpdGUgYXMgbm90IGlkZWFsIGFz
IGJ1aWxkIGZhaWx1cmUuCgpTaWduZWQtb2ZmLWJ5OiBLZXZpbiBEYXJieXNoaXJlLUJyeWFudCA8
bGRpckBkYXJieXNoaXJlLWJyeWFudC5tZS51az4KLS0tCiBwYWNrYWdlL25ldHdvcmsvc2Vydmlj
ZXMvdW1kbnMvTWFrZWZpbGUgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2Vz
L3VtZG5zL01ha2VmaWxlIGIvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3VtZG5zL01ha2VmaWxl
CmluZGV4IGZmYmMzZmVkMzUuLjdkYmJlYTMyMmEgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvbmV0d29y
ay9zZXJ2aWNlcy91bWRucy9NYWtlZmlsZQorKysgYi9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMv
dW1kbnMvTWFrZWZpbGUKQEAgLTgsNyArOCw3IEBACiBpbmNsdWRlICQoVE9QRElSKS9ydWxlcy5t
awogCiBQS0dfTkFNRTo9dW1kbnMKLVBLR19SRUxFQVNFOj0xCitQS0dfUkVMRUFTRTo9MgogCiBQ
S0dfU09VUkNFX1VSTD0kKFBST0pFQ1RfR0lUKS9wcm9qZWN0L21kbnNkLmdpdAogUEtHX1NPVVJD
RV9QUk9UTzo9Z2l0CkBAIC0zMCw3ICszMCw3IEBAIGRlZmluZSBQYWNrYWdlL3VtZG5zCiAgIERF
UEVORFM6PStsaWJ1Ym94ICtsaWJ1YnVzICtsaWJibG9ibXNnLWpzb24KIGVuZGVmCiAKLVRBUkdF
VF9DRkxBR1MgKz0gLUkkKFNUQUdJTkdfRElSKS91c3IvaW5jbHVkZQorVEFSR0VUX0NGTEFHUyAr
PSAtSSQoU1RBR0lOR19ESVIpL3Vzci9pbmNsdWRlIC1Xbm8tYWRkcmVzcy1vZi1wYWNrZWQtbWVt
YmVyCiAKIGRlZmluZSBQYWNrYWdlL3VtZG5zL2NvbmZmaWxlcwogL2V0Yy9jb25maWcvdW1kbnMK
LS0gCjIuMjQuMSAoQXBwbGUgR2l0LTEyNikKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
