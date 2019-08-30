Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66343A3ACC
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 17:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ergv3szvVEJJslO5Mf7QqB/SOBklURXzWt3v8tbQrJI=; b=VK16L7gEKjPnDP
	o5/fItw9u1BmL+XdZcgGofW9lcEkcynQdjMts++wsW24Tt5apNob2uCoOerUerAsxtZJAhTkuTjiY
	rUKcUy7jhtw57tPSOJDJbjGrOEfHMMk1+FySpf5hO9GxGsIQ8MHfJ2vxIkwl3Hj3L9FD1+Pujrz/+
	Tion9xRcZE0BAqeUHA+5T43iI4ZRkkE/2Q2EYlK3//6Jbn/mDe1PLPkubigHWd5UhshEIskexJ8Gd
	upqjsIklQLouU+HzjiKj0U04DW5mltBcby0IhT0qbiR2IbJBzJUDOlqtodjKjzgjzj0kqdxzS89sL
	QPoTvjf1HtsyAhY9tLnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3j6X-0005g7-F6; Fri, 30 Aug 2019 15:46:25 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3j6O-0005fl-5m
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 15:46:17 +0000
Received: by mail-lj1-x241.google.com with SMTP id j16so745454ljg.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 30 Aug 2019 08:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XphdWwiSUvAD2vP81a0BxZB+52n0WTt2jWQKNmXwlR0=;
 b=RaSPDo3Li3rCt5V3eOXpNFY+pelsaNZpv+hJVwlXCQ8tkSfFOmA306vH8CO067B9zK
 SuRVWYYJJXTEYNLANFjw5K58DEu42pC9ExzJIX4cfb44ElUToUk165k8Jwv9UocOmnkN
 LrrZp+afOtjQNe6hPR9JOJ0P1OdtQsapyLqlgruDj+4Ha4HgYmxg1QrXNC+UOMzVVAOJ
 mcJyF60Q/Ixq2uLyit1Us2bUNH1dgrwc6kLA+zbgwrZthwRjXCI1Mm7LTUXnGEUZIAZP
 wSkAQ0RzIqMWyZMi16RMEarGx9TdSJuBPEPG1yVGUVZOhvA0chg+rwNL0tgFw7G2SkP+
 NgDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XphdWwiSUvAD2vP81a0BxZB+52n0WTt2jWQKNmXwlR0=;
 b=baONtgj6PHDp3aUPa2J2FAtU7li7loRuBApjXV1zb8ecrUZJRXZ3YS25Xsxdb3TJBC
 9nvbBZDluAvf7qjo9FIcZoU4GGO1EsFjFChFoe4QwQMvLKfEgb8xkU9Tj+mVVEdp+g0n
 V/++1nEgrSZ1hHLebxOcDRlOy35rQ+vkyaRZ+0A62uVYj3z1UR/5k6ZNaE7S/jhdOA8f
 ypfpmh27SWMHyWGp9vIZ7kLnRp4mNUpPrppmHcRuRwcv90CTt8qtOPSGNDaIjshGWiBn
 uzWbiFhRxLkror9uX78GtbaysTFQ+NULz7arn6zSe3dEkX8g7uH4miNQHl9E3/fuN9fL
 rMeg==
X-Gm-Message-State: APjAAAUCfyyhYiBH8eKoIio7xrpSkH5RQvhnchiZhDzfCGLq2Y44peGd
 rYDuvKhwAqkSn9B+15GR/UiwnaSf
X-Google-Smtp-Source: APXvYqw1ShOM/pzRyxGeNAXTBKNVtVDMZR0BUDD72eJbx9KZPWqt6Np2NGv1fMPnKk3E2kUhy65OBg==
X-Received: by 2002:a2e:81cb:: with SMTP id s11mr8730971ljg.179.1567179974079; 
 Fri, 30 Aug 2019 08:46:14 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id i5sm887994lji.74.2019.08.30.08.46.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:46:13 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	John Crispin <john@phrozen.org>
Date: Fri, 30 Aug 2019 17:46:07 +0200
Message-Id: <20190830154607.6463-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_084616_222050_3B618574 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of broken
 firmware images
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyB1c2VzIHJlY2Vu
dGx5IGFkZGVkICJ2YWxpZGF0ZV9maXJtd2FyZV9pbWFnZSIgdG8gdmFsaWRhdGUgcGFzc2VkCmZp
cm13YXJlLiBJZiBpdCBoYXBwZW5zIHRvIGJlIGludmFsaWQgYW5kIG1hcmtlZCBhcyBpbXBvc3Np
YmxlIHRvIGZvcmNlCnRoZW4gc3lzdXBncmFkZSBzaW1wbHkgZXhpdHMgd2l0aCBhbiBlcnJvci4K
ClRoaXMgY2hhbmdlIGlzIG5lZWRlZCB0byBhdm9pZCBicmlja2luZyBkZXZpY2VzIHdpdGggc29t
ZSB0b3RhbGx5IGJyb2tlbgppbWFnZXMuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kg
PHJhZmFsQG1pbGVja2kucGw+Ci0tLQpUaGlzIHBhdGNoIGRlcGVuZHMgb24gdGhlOgpbUEFUQ0gg
cHJvY2RdIHN5c3RlbTogYWRkICJ2YWxpZGF0ZV9maXJtd2FyZV9pbWFnZSIgdWJ1cyBtZXRob2QK
LS0tCiBzeXN0ZW0uYyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDI0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zeXN0ZW0uYyBiL3N5c3RlbS5jCmlu
ZGV4IDM1ZDVhMjMuLjdmNDk3NTggMTAwNjQ0Ci0tLSBhL3N5c3RlbS5jCisrKyBiL3N5c3RlbS5j
CkBAIC01MDcsNyArNTA3LDE4IEBAIHN0YXRpYyBpbnQgc3lzdXBncmFkZShzdHJ1Y3QgdWJ1c19j
b250ZXh0ICpjdHgsIHN0cnVjdCB1YnVzX29iamVjdCAqb2JqLAogCQkgICAgICBzdHJ1Y3QgdWJ1
c19yZXF1ZXN0X2RhdGEgKnJlcSwgY29uc3QgY2hhciAqbWV0aG9kLAogCQkgICAgICBzdHJ1Y3Qg
YmxvYl9hdHRyICptc2cpCiB7CisJZW51bSB7CisJCVZBTElEQVRJT05fVkFMSUQsCisJCVZBTElE
QVRJT05fRk9SQ0VBQkxFLAorCQlfX1ZBTElEQVRJT05fTUFYCisJfTsKKwlzdGF0aWMgY29uc3Qg
c3RydWN0IGJsb2Jtc2dfcG9saWN5IHZhbGlkYXRpb25fcG9saWN5W19fVkFMSURBVElPTl9NQVhd
ID0geworCQlbVkFMSURBVElPTl9WQUxJRF0gPSB7IC5uYW1lID0gInZhbGlkIiwgLnR5cGUgPSBC
TE9CTVNHX1RZUEVfQk9PTCB9LAorCQlbVkFMSURBVElPTl9GT1JDRUFCTEVdID0geyAubmFtZSA9
ICJmb3JjZWFibGUiLCAudHlwZSA9IEJMT0JNU0dfVFlQRV9CT09MIH0sCisJfTsKKwlzdHJ1Y3Qg
YmxvYl9hdHRyICp2YWxpZGF0aW9uW19fVkFMSURBVElPTl9NQVhdOwogCXN0cnVjdCBibG9iX2F0
dHIgKnRiW19fU1lTVVBHUkFERV9NQVhdOworCWJvb2wgdmFsaWQsIGZvcmNlYWJsZTsKIAogCWlm
ICghbXNnKQogCQlyZXR1cm4gVUJVU19TVEFUVVNfSU5WQUxJRF9BUkdVTUVOVDsKQEAgLTUxNiw2
ICs1MjcsMTkgQEAgc3RhdGljIGludCBzeXN1cGdyYWRlKHN0cnVjdCB1YnVzX2NvbnRleHQgKmN0
eCwgc3RydWN0IHVidXNfb2JqZWN0ICpvYmosCiAJaWYgKCF0YltTWVNVUEdSQURFX1BBVEhdIHx8
ICF0YltTWVNVUEdSQURFX1BSRUZJWF0pCiAJCXJldHVybiBVQlVTX1NUQVRVU19JTlZBTElEX0FS
R1VNRU5UOwogCisJaWYgKHZhbGlkYXRlX2Zpcm13YXJlX2ltYWdlX2NhbGwoYmxvYm1zZ19nZXRf
c3RyaW5nKHRiW1NZU1VQR1JBREVfUEFUSF0pKSkKKwkJcmV0dXJuIFVCVVNfU1RBVFVTX1VOS05P
V05fRVJST1I7CisKKwlibG9ibXNnX3BhcnNlKHZhbGlkYXRpb25fcG9saWN5LCBfX1ZBTElEQVRJ
T05fTUFYLCB2YWxpZGF0aW9uLCBibG9iX2RhdGEoYi5oZWFkKSwgYmxvYl9sZW4oYi5oZWFkKSk7
CisKKwl2YWxpZCA9IHZhbGlkYXRpb25bVkFMSURBVElPTl9WQUxJRF0gJiYgYmxvYm1zZ19nZXRf
Ym9vbCh2YWxpZGF0aW9uW1ZBTElEQVRJT05fVkFMSURdKTsKKwlmb3JjZWFibGUgPSB2YWxpZGF0
aW9uW1ZBTElEQVRJT05fRk9SQ0VBQkxFXSAmJiBibG9ibXNnX2dldF9ib29sKHZhbGlkYXRpb25b
VkFMSURBVElPTl9GT1JDRUFCTEVdKTsKKworCWlmICghdmFsaWQgJiYgIWZvcmNlYWJsZSkgewor
CQlmcHJpbnRmKHN0ZGVyciwgIkZpcm13YXJlIGltYWdlIGlzIGJyb2tlbiBhbmQgY2Fubm90IGJl
IGluc3RhbGxlZFxuIik7CisJCXJldHVybiBVQlVTX1NUQVRVU19VTktOT1dOX0VSUk9SOworCX0K
KwogCXN5c3VwZ3JhZGVfZXhlY191cGdyYWRlZChibG9ibXNnX2dldF9zdHJpbmcodGJbU1lTVVBH
UkFERV9QUkVGSVhdKSwKIAkJCQkgYmxvYm1zZ19nZXRfc3RyaW5nKHRiW1NZU1VQR1JBREVfUEFU
SF0pLAogCQkJCSB0YltTWVNVUEdSQURFX0NPTU1BTkRdID8gYmxvYm1zZ19nZXRfc3RyaW5nKHRi
W1NZU1VQR1JBREVfQ09NTUFORF0pIDogTlVMTCwKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
