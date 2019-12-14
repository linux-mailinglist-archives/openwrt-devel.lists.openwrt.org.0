Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B0411F45A
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 22:55:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5G0fHQOusSGXJPviCgacIEE2us8EupWe0rsgxVAqyHc=; b=hM56euyognkDf0
	wT9yYXwjXZB59iimYfcSvJufHCkiFotXHFRoBFezVKO3PyhFpNJbpirh58KeY2jGdeW5Xu4VIFMnw
	RnCPb5Xli2qZMqkoyhf0nDpAa3K7zBH/5D+qKemfdOZO7b6bznuX1ZgMF9N/LCACXpY6PXmx3SGDf
	viPFISr2WRT432eLgKea489fa7/zGhlbn0/SVhvjRk+iRMpcMePOL7Ll7sLZngy5UiQyRBwUiTizy
	ulK7IKclGXwC7XxmanjT0r0uMv17m+1BjLu+sOcdblbzLMmB6lYpq6nI2XBmLJkbOHfCH4H39iDmR
	PKHecsGyJfZWGWifMDhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igFNw-000151-Si; Sat, 14 Dec 2019 21:55:36 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igFNh-0000we-G1
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 21:55:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id d20so2576946ljc.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Dec 2019 13:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J9JkgRQrwFhGhVaCWA9FwnOwjhRFrXkDz96ENBcvQ0Q=;
 b=pSVvj/W6fhIMaEqVEU2XO6/7O7G15V/wRF1Fzx3UC0BtYAQgN0HL+7/yIJXF6ktTZT
 j5SPkAV4q7zTp/3Vp6jClFT+naBAXpkLtftF4Oq7HOAcqmvqwIkHyaioLyNQCycG23Km
 nZyGc4bFSKPDkTeabYoD9tdiKZ80zEnP6/6o5AIl8UutNAkBmQOxI6NADLU6s/NVRiO8
 irTZwU7vjbeV4cGNTvTuGyeeLne5hjbmWw+mieDPdV/drYtE0Ch7qSnfnkisqaAa2wYR
 NiYtzVa28V/VjIPFB8OvlUYfy/LUzLWFTEgukx2xaYIcDckidoUqwfSYbBshNaOG1JGu
 WZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J9JkgRQrwFhGhVaCWA9FwnOwjhRFrXkDz96ENBcvQ0Q=;
 b=K5gwPzh+8UwxL55sjb+AsHE94FVpZmTgvynGaVL79/tpzfRRfaHcX/YelFPt93lkOc
 AAp3NcilaYVva2r10BWKVJijAX9Kqx5k+mLUMR2Plopb/TXiDwnR+pSFCN3g7YUKXgwo
 NDryOzK8grJKOlF+wzYxEbi1FGSFqvTc7IqVbB3Ivo+dimxlg0zUA9ogq2wnTyAnGLyI
 aAMxVhw1dbWvkhv51AwpIl92f9d1FZ0qglePfPnUrV25FbtuxxcqJmijtSw6EreqLQ/S
 jfgdD+LoLJhiVhjnepRiwcFg5/X1j9MRxSTjvkABZ3ATe5ui63QaqXRQJ1EhW/TC5hBQ
 JNPQ==
X-Gm-Message-State: APjAAAVrStNER7WmdpJweZbkq7TgWTncMRFOw34p+8rwV3wxYY/58Riv
 cPjwe59Na6FShVLkejqAqOq9uwor
X-Google-Smtp-Source: APXvYqyZuOsXMItZ/OU1df19RxWKCEhTZ+z551VSH0SPaNd4Tzh6on5jF6OhniSBL1Ej+2kIsU8+nw==
X-Received: by 2002:a2e:6e03:: with SMTP id j3mr14712888ljc.27.1576360519499; 
 Sat, 14 Dec 2019 13:55:19 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id f26sm7272897ljn.104.2019.12.14.13.55.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Dec 2019 13:55:18 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 14 Dec 2019 22:55:00 +0100
Message-Id: <20191214215501.14219-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191214215501.14219-1-zajec5@gmail.com>
References: <20191214215501.14219-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_135521_532017_1C82EE78 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Subject: [OpenWrt-Devel] [PATCH fstools 1/2] libblkid-tiny: add functions
 for allocating & freeing probe struct
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBhZGRzIGJsa2lk
X25ld19wcm9iZSgpIGFuZCBibGtpZF9mcmVlX3Byb2JlKCkgd2hpY2ggaGF2ZSB0byBiZSB1c2Vk
CmluIHBsYWNlIG9mIHNpbXBsZSBzdHJ1Y3QgbWVtb3J5IGFsbG9jYXRpb24uIFRoZXkgd2lsbCBh
bGxvdyBleHRlbmRpbmcKcHJvYmUgc3RydWN0IGJ5IGFueSBleHRyYSBpbml0aWFsaXphdGlvbiBj
b2RlIGFuZCByZXNvdXJjZXMgcmVsZWFzZS4KCk5ld2x5IGludHJvZHVjZWQgcHJvYmUuYyBmaWxl
IGlzIGJhc2VkIG9uIG9yaWdpbmFsIGxpYmJsa2lkJ3MgY29kZS4KClNpZ25lZC1vZmYtYnk6IFJh
ZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBDTWFrZUxpc3RzLnR4dCAgICAg
ICAgICAgICAgICB8ICAxICsKIGxpYmJsa2lkLXRpbnkvbGliYmxraWQtdGlueS5oIHwgIDMgKysr
CiBsaWJibGtpZC10aW55L3Byb2JlLmMgICAgICAgICB8IDMxICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysKIHByb2JlLmMgICAgICAgICAgICAgICAgICAgICAgIHwgMzggKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0KIDQgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygr
KSwgMTYgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgbGliYmxraWQtdGlueS9wcm9i
ZS5jCgpkaWZmIC0tZ2l0IGEvQ01ha2VMaXN0cy50eHQgYi9DTWFrZUxpc3RzLnR4dAppbmRleCA3
ZjEzYzRmLi5hNTg2NTc3IDEwMDY0NAotLS0gYS9DTWFrZUxpc3RzLnR4dAorKysgYi9DTWFrZUxp
c3RzLnR4dApAQCAtMjIsNiArMjIsNyBAQCBBRERfTElCUkFSWShibGtpZC10aW55IFNIQVJFRAog
CQlsaWJibGtpZC10aW55L2VuY29kZS5jCiAJCWxpYmJsa2lkLXRpbnkvbGliYmxraWQtdGlueS5j
CiAJCWxpYmJsa2lkLXRpbnkvbWtkZXYuYworCQlsaWJibGtpZC10aW55L3Byb2JlLmMKIAkJbGli
YmxraWQtdGlueS9leHQuYwogCQlsaWJibGtpZC10aW55L2pmZnMyLmMKIAkJbGliYmxraWQtdGlu
eS92ZmF0LmMKZGlmZiAtLWdpdCBhL2xpYmJsa2lkLXRpbnkvbGliYmxraWQtdGlueS5oIGIvbGli
YmxraWQtdGlueS9saWJibGtpZC10aW55LmgKaW5kZXggNDE5ZDVkYi4uMDZmZjk0YiAxMDA2NDQK
LS0tIGEvbGliYmxraWQtdGlueS9saWJibGtpZC10aW55LmgKKysrIGIvbGliYmxraWQtdGlueS9s
aWJibGtpZC10aW55LmgKQEAgLTYwLDYgKzYwLDkgQEAgc3RydWN0IGJsa2lkX3N0cnVjdF9wcm9i
ZQogCWNoYXIJdmVyc2lvbls2NF07CiB9OwogCitzdHJ1Y3QgYmxraWRfc3RydWN0X3Byb2JlICpi
bGtpZF9uZXdfcHJvYmUodm9pZCk7Cit2b2lkIGJsa2lkX2ZyZWVfcHJvYmUoc3RydWN0IGJsa2lk
X3N0cnVjdF9wcm9iZSAqcHIpOworCiBleHRlcm4gaW50IHByb2JlX2Jsb2NrKGNoYXIgKmJsb2Nr
LCBzdHJ1Y3QgYmxraWRfc3RydWN0X3Byb2JlICpwcik7CiBleHRlcm4gaW50IG1rYmxrZGV2KHZv
aWQpOwogCmRpZmYgLS1naXQgYS9saWJibGtpZC10aW55L3Byb2JlLmMgYi9saWJibGtpZC10aW55
L3Byb2JlLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uNTRlMjJkYwotLS0g
L2Rldi9udWxsCisrKyBiL2xpYmJsa2lkLXRpbnkvcHJvYmUuYwpAQCAtMCwwICsxLDMxIEBACisv
KgorICogTG93LWxldmVsIGxpYmJsa2lkIHByb2JpbmcgQVBJCisgKgorICogQ29weXJpZ2h0IChD
KSAyMDA4LTIwMDkgS2FyZWwgWmFrIDxremFrQHJlZGhhdC5jb20+CisgKgorICogVGhpcyBmaWxl
IG1heSBiZSByZWRpc3RyaWJ1dGVkIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUKKyAqIEdOVSBMZXNz
ZXIgR2VuZXJhbCBQdWJsaWMgTGljZW5zZS4KKyAqLworCisjaW5jbHVkZSA8c3RkbGliLmg+CisK
KyNpbmNsdWRlICJsaWJibGtpZC10aW55LmgiCisKK3N0cnVjdCBibGtpZF9zdHJ1Y3RfcHJvYmUg
KmJsa2lkX25ld19wcm9iZSh2b2lkKQoreworCXN0cnVjdCBibGtpZF9zdHJ1Y3RfcHJvYmUgKnBy
OworCisJcHIgPSBjYWxsb2MoMSwgc2l6ZW9mKHN0cnVjdCBibGtpZF9zdHJ1Y3RfcHJvYmUpKTsK
KwlpZiAoIXByKQorCQlyZXR1cm4gTlVMTDsKKworCXJldHVybiBwcjsKK30KKwordm9pZCBibGtp
ZF9mcmVlX3Byb2JlKHN0cnVjdCBibGtpZF9zdHJ1Y3RfcHJvYmUgKnByKQoreworCWlmICghcHIp
CisJCXJldHVybjsKKworCWZyZWUocHIpOworfQpkaWZmIC0tZ2l0IGEvcHJvYmUuYyBiL3Byb2Jl
LmMKaW5kZXggNjNkNmY4Yy4uN2QwZTgzMSAxMDA2NDQKLS0tIGEvcHJvYmUuYworKysgYi9wcm9i
ZS5jCkBAIC0yMSwzNCArMjEsNDAgQEAgc3RhdGljIHN0cnVjdCBwcm9iZV9pbmZvICoKIHByb2Jl
X3BhdGhfdGlueShjb25zdCBjaGFyICpwYXRoKQogewogCXN0cnVjdCBwcm9iZV9pbmZvICppbmZv
ID0gTlVMTDsKLQlzdHJ1Y3QgYmxraWRfc3RydWN0X3Byb2JlIHByID0geyB9OworCXN0cnVjdCBi
bGtpZF9zdHJ1Y3RfcHJvYmUgKnByOwogCWNoYXIgKnR5cGUsICpkZXYsICp1dWlkLCAqbGFiZWws
ICp2ZXJzaW9uOwogCi0JaWYgKHByb2JlX2Jsb2NrKChjaGFyICopcGF0aCwgJnByKSA9PSAwICYm
IHByLmlkICYmICFwci5lcnIpIHsKKwlwciA9IGJsa2lkX25ld19wcm9iZSgpOworCWlmICghcHIp
CisJCXJldHVybiBOVUxMOworCisJaWYgKHByb2JlX2Jsb2NrKChjaGFyICopcGF0aCwgcHIpID09
IDAgJiYgcHItPmlkICYmICFwci0+ZXJyKSB7CiAJCWluZm8gPSBjYWxsb2NfYShzaXplb2YoKmlu
Zm8pLAotCQkgICAgICAgICAgICAgICAgJnR5cGUsICAgIHN0cmxlbihwci5pZC0+bmFtZSkgKyAx
LAotCQkgICAgICAgICAgICAgICAgJmRldiwgICAgIHN0cmxlbihwci5kZXYpICAgICAgKyAxLAot
CQkgICAgICAgICAgICAgICAgJnV1aWQsICAgIHN0cmxlbihwci51dWlkKSAgICAgKyAxLAotCQkg
ICAgICAgICAgICAgICAgJmxhYmVsLCAgIHN0cmxlbihwci5sYWJlbCkgICAgKyAxLAotCQkgICAg
ICAgICAgICAgICAgJnZlcnNpb24sIHN0cmxlbihwci52ZXJzaW9uKSAgKyAxKTsKKwkJICAgICAg
ICAgICAgICAgICZ0eXBlLCAgICBzdHJsZW4ocHItPmlkLT5uYW1lKSArIDEsCisJCSAgICAgICAg
ICAgICAgICAmZGV2LCAgICAgc3RybGVuKHByLT5kZXYpICAgICAgKyAxLAorCQkgICAgICAgICAg
ICAgICAgJnV1aWQsICAgIHN0cmxlbihwci0+dXVpZCkgICAgICsgMSwKKwkJICAgICAgICAgICAg
ICAgICZsYWJlbCwgICBzdHJsZW4ocHItPmxhYmVsKSAgICArIDEsCisJCSAgICAgICAgICAgICAg
ICAmdmVyc2lvbiwgc3RybGVuKHByLT52ZXJzaW9uKSAgKyAxKTsKIAogCQlpZiAoaW5mbykgewot
CQkJaW5mby0+dHlwZSA9IHN0cmNweSh0eXBlLCBwci5pZC0+bmFtZSk7CisJCQlpbmZvLT50eXBl
ID0gc3RyY3B5KHR5cGUsIHByLT5pZC0+bmFtZSk7CiAKLQkJCWlmIChwci5kZXZbMF0pCi0JCQkJ
aW5mby0+ZGV2ID0gc3RyY3B5KGRldiwgcHIuZGV2KTsKKwkJCWlmIChwci0+ZGV2WzBdKQorCQkJ
CWluZm8tPmRldiA9IHN0cmNweShkZXYsIHByLT5kZXYpOwogCi0JCQlpZiAocHIudXVpZFswXSkK
LQkJCQlpbmZvLT51dWlkID0gc3RyY3B5KHV1aWQsIHByLnV1aWQpOworCQkJaWYgKHByLT51dWlk
WzBdKQorCQkJCWluZm8tPnV1aWQgPSBzdHJjcHkodXVpZCwgcHItPnV1aWQpOwogCi0JCQlpZiAo
cHIubGFiZWxbMF0pCi0JCQkJaW5mby0+bGFiZWwgPSBzdHJjcHkobGFiZWwsIHByLmxhYmVsKTsK
KwkJCWlmIChwci0+bGFiZWxbMF0pCisJCQkJaW5mby0+bGFiZWwgPSBzdHJjcHkobGFiZWwsIHBy
LT5sYWJlbCk7CiAKLQkJCWlmIChwci52ZXJzaW9uWzBdKQotCQkJCWluZm8tPnZlcnNpb24gPSBz
dHJjcHkodmVyc2lvbiwgcHIudmVyc2lvbik7CisJCQlpZiAocHItPnZlcnNpb25bMF0pCisJCQkJ
aW5mby0+dmVyc2lvbiA9IHN0cmNweSh2ZXJzaW9uLCBwci0+dmVyc2lvbik7CiAJCX0KIAl9CiAK
KwlibGtpZF9mcmVlX3Byb2JlKHByKTsKKwogCXJldHVybiBpbmZvOwogfQogCi0tIAoyLjIxLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
