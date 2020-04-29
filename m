Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D31BDA13
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 12:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Udam1sgVe76MUgVgPSWR5LuJwJC3EQt+3WzPLtJseQ=; b=LRUtbBEfRus/Ho
	Idua9R6AU0i1mdt/M3RbY5cx3HvpHwVUAuzCKeY6fzD8Xmk1Hk7XbPNm73viMiYRViRPADExJjzqW
	UF9r9fRcgm+SPvp2Oi9lTMbokUcYj8JRHpYdmWmqIUoq7IWLhDRjT8r7M87AUZGzWO+laDhk/IVMF
	kp+bnqY5sGb4ZYG8ZhH/W/dV/PF2wFPoAVq2S/pWg2Lcyx0nPFbH6CfHEl77cXBdlIzkzvw6klqs1
	gd4pZWoWHiaIGQQL5qydi9cnk6ZgPwBJ5eF8MJisFr56w2U3Tc3q8wj/d5FGHZ/63a+OawDDtnpYl
	Wi11boCgx+gyxCXd8oAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTkGQ-0004Rl-8A; Wed, 29 Apr 2020 10:48:26 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTkGJ-0004QS-U0
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 10:48:21 +0000
Received: by mail-wm1-x332.google.com with SMTP id y24so1482806wma.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Apr 2020 03:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NERDhmaLvgm0zb4l1/XI95pxxmtU/x1Ucp7Rw9yVoF4=;
 b=WPPRvM5tAdldDaZ5Xj5AafeL4WHTsLG589+jVVtOv0qLrvSAjgRejs+RMID5YShv+t
 nRNXvEQb01VdUoHTGKVURLXyWLR4XOwiKrAfX++sfj08k11uyvMOvh3KL6jlPnQw4EXE
 MJTLFgLLHOZgs6GYV9F0HwQ7STCc6aQxkU30TZ79e17aYg8XXcHmwhAZx9wihorYwStG
 fvDP2RQekR7zuu3g6xjqi9sKeo4EEKxt51K0sKshMLjJGshYnCrL8Bn4UO6MvV00D4Tf
 BzbNyqDCS/jTV9zBc9stDuQwoZoCsTo9Aj2sxrdrj75MOnt2bD1BwDhD2AccnWBP94D9
 0kHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NERDhmaLvgm0zb4l1/XI95pxxmtU/x1Ucp7Rw9yVoF4=;
 b=kRvSiNoo9e8I+uQZtLbtnA9RdxHCIC4q5h4+ZgX1R5fxYhUzE5kthqeDKLUlTVvTbR
 e/GmfIocXR1W1sWbodd0hBiToihn4Mf/ZduNDTvwox9JuYXEcuou5Y5FJAe/q7prTLHS
 m04tUvVLyd4zTJoTy4Hynn5DByBaIXp8aObRnWGDDntSUKkBHAWcnjMh9JFIf656OWBq
 FCTbDMWHA2x5ot81Kh7yhCswLiwUhyLeXhfNGGmbqMv9sdCYirDT6OxJnZB57lU2WPQP
 6q51zu2PoiXnNg8Ku4N/jnnok3FsTqKvB+maSax172h38F1PTEVHeVV3TBlu2XNVh5vs
 IRmQ==
X-Gm-Message-State: AGi0PuZjGenDGXtrf24VHcuU0sgdDKwdGPHFXsedTHU7UdOfkjN01SfW
 Ak1l/3eNW6lF5XLFJo6vl6VHU0VsjcI=
X-Google-Smtp-Source: APiQypLCpVnfDKVnJFsHzj5ZpmePkIfe4HY4Cs/LtYr+iU5TpSvOXFav9PprzqtL7G8axBlKeO6k2g==
X-Received: by 2002:a05:600c:1008:: with SMTP id
 c8mr2494324wmc.14.1588157297118; 
 Wed, 29 Apr 2020 03:48:17 -0700 (PDT)
Received: from localhost ([2001:1488:fffe:6:287e:62ff:fe90:29da])
 by smtp.gmail.com with ESMTPSA id h13sm28192162wrs.22.2020.04.29.03.48.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 03:48:16 -0700 (PDT)
From: "=?UTF-8?q?Karel=20Ko=C4=8D=C3=AD?=" <citrisin@gmail.com>
X-Google-Original-From: =?UTF-8?q?Karel=20Ko=C4=8D=C3=AD?= <karel.koci@nic.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 Apr 2020 12:47:58 +0200
Message-Id: <20200429104758.25425-1-karel.koci@nic.cz>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_034820_000265_6243EAF6 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [citrisin[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] tools: add autoconf-archive
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
Cc: =?UTF-8?q?Karel=20Ko=C4=8D=C3=AD?= <karel.koci@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U29tZSBhdXRvdG9vbHMgYmFzZWQgYnVpbGQgc3lzdGVtcyBhcmUgdXNpbmcgYXV0b2NvbmYtYXJj
aGl2ZSBzY3JpcHRzCmFuZCBhcmUgZXhwZWN0aW5nIHRoZW0gdG8gYWxtb3N0IGFsd2F5cyBiZSBh
dmFpbGFibGUuIFRoaXMgaXMgbm90CnJlcXVpcmVkIGZvciByZWd1bGFyIHJlbGVhc2VzIGFzIHRh
ciBiYWxscyBnZW5lcmF0ZWQgZm9yIHJlbGVhc2VzCmNvbW1vbmx5IGhhdmUgZXhpc3RpbmcgY29u
ZmlndXJlIHNjcmlwdC4gVGhpcyBpcyByYXRoZXIgaW50ZW5kZWQgdG8gYmUKdXNlZCB3aXRoIGF1
dG90b29scy5taydzIGF1dG9yZWNvbmYgYW5kIGluIGNhc2VzIGl0IGlzIG5vdCBhbHdheXMKcG9z
c2libGUgdG8gZ2V0IHJlbGVhc2UgdGFyIGJhbGwuCgpJbmNsdWRpbmcgdGhpcyBhZGRzIGxpdHRs
ZSB0byBubyBvdmVyaGVhZCBpbiB0ZXJtcyBvZiBidWlsZCB0aW1lIGFzCnRob3NlIGFyZSBqdXN0
IG00IHNjcmlwdHMgY29waWVkIHRvIGFuIGFwcHJvcHJpYXRlIGxvY2F0aW9uLgoKU2lnbmVkLW9m
Zi1ieTogS2FyZWwgS2/EjcOtIDxrYXJlbC5rb2NpQG5pYy5jej4KLS0tCiB0b29scy9NYWtlZmls
ZSAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIHRvb2xzL2F1dG9jb25mLWFyY2hpdmUvTWFrZWZp
bGUgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDI5
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy9h
dXRvY29uZi1hcmNoaXZlL01ha2VmaWxlCgpkaWZmIC0tZ2l0IGEvdG9vbHMvTWFrZWZpbGUgYi90
b29scy9NYWtlZmlsZQppbmRleCAwMjU1NmQ0YjgzLi5hYWFlZjk1MDQ2IDEwMDY0NAotLS0gYS90
b29scy9NYWtlZmlsZQorKysgYi90b29scy9NYWtlZmlsZQpAQCAtMjIsNyArMjIsNyBAQCBpZm5l
cSAoJChDT05GSUdfU0RLKSQoQ09ORklHX1BBQ0tBR0Vfa21vZC1iNDMpJChDT05GSUdfUEFDS0FH
RV9iNDNsZWdhY3ktZmlybXdhcgogZW5kaWYKIAogdG9vbHMtJChCVUlMRF9UT09MQ0hBSU4pICs9
IGdtcCBtcGZyIG1wYyBsaWJlbGYgZXhwYXQKLXRvb2xzLXkgKz0gbTQgbGlidG9vbCBhdXRvY29u
ZiBhdXRvbWFrZSBmbGV4IGJpc29uIHBrZ2NvbmYgbWtsaWJzIHpsaWIKK3Rvb2xzLXkgKz0gbTQg
bGlidG9vbCBhdXRvY29uZiBhdXRvY29uZi1hcmNoaXZlIGF1dG9tYWtlIGZsZXggYmlzb24gcGtn
Y29uZiBta2xpYnMgemxpYgogdG9vbHMteSArPSBzc3RyaXAgbWFrZS1leHQ0ZnMgZTJmc3Byb2dz
IG10ZC11dGlscyBta2ltYWdlCiB0b29scy15ICs9IGZpcm13YXJlLXV0aWxzIHBhdGNoLWltYWdl
IHF1aWx0IHBhZGpmZnMyCiB0b29scy15ICs9IG1tLW1hY3JvcyBtaXNzaW5nLW1hY3JvcyBjbWFr
ZSBiYyBmaW5kdXRpbHMgZ2VuZ2V0b3B0IHBhdGNoZWxmCmRpZmYgLS1naXQgYS90b29scy9hdXRv
Y29uZi1hcmNoaXZlL01ha2VmaWxlIGIvdG9vbHMvYXV0b2NvbmYtYXJjaGl2ZS9NYWtlZmlsZQpu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwLi5iM2Q3MjlmNDFkCi0tLSAvZGV2
L251bGwKKysrIGIvdG9vbHMvYXV0b2NvbmYtYXJjaGl2ZS9NYWtlZmlsZQpAQCAtMCwwICsxLDI4
IEBACitpbmNsdWRlICQoVE9QRElSKS9ydWxlcy5taworCitQS0dfTkFNRTo9YXV0b2NvbmYtYXJj
aGl2ZQorUEtHX1ZFUlNJT046PTIwMTkuMDEuMDYKKworUEtHX1NPVVJDRTo9JChQS0dfTkFNRSkt
JChQS0dfVkVSU0lPTikudGFyLnh6CitQS0dfU09VUkNFX1VSTDo9QEdOVS9hdXRvY29uZi1hcmNo
aXZlCitQS0dfSEFTSDo9MTcxOTVjODMzMDk4ZGE3OWRlNTc3OGVlOTA5NDhmNGM1ZDkwZWQxYTBj
ZjgzOTFiNGFiMzQ4ZTJlYzUxMWUzZgorCitpbmNsdWRlICQoSU5DTFVERV9ESVIpL2hvc3QtYnVp
bGQubWsKKworSE9TVF9DT05GSUdVUkVfQVJHUyArPSBcCisJLS1kYXRhcm9vdGRpcj0kKFNUQUdJ
TkdfRElSX0hPU1QpL3NoYXJlCisKK2RlZmluZSBIb3N0L0NvbXBpbGUKKwlleHBvcnQgU0hFTEw9
IiQoQkFTSCkiOyAkKE1BS0UpIC1DICQoSE9TVF9CVUlMRF9ESVIpCitlbmRlZgorCitkZWZpbmUg
SG9zdC9JbnN0YWxsCisJZXhwb3J0IFNIRUxMPSIkKEJBU0gpIjsgJChNQUtFKSAtQyAkKEhPU1Rf
QlVJTERfRElSKSBpbnN0YWxsCitlbmRlZgorCitkZWZpbmUgSG9zdC9DbGVhbgorCS1leHBvcnQg
U0hFTEw9IiQoQkFTSCkiOyAkKE1BS0UpIC1DICQoSE9TVF9CVUlMRF9ESVIpIHVuaW5zdGFsbAor
CSQoY2FsbCBIb3N0L0NsZWFuL0RlZmF1bHQpCitlbmRlZgorCiskKGV2YWwgJChjYWxsIEhvc3RC
dWlsZCkpCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
