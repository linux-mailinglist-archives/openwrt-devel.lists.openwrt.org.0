Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E7AA6800
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 14:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E3m+bU46PkKs21w6UaqmsX6uIgNekJ1WNfM3fbJWV0c=; b=gkszcmGqJvf+Uw
	uo14NW3O2+M6kxMwuP39C14hTvuRuYZ7fmC/K9qIbVNIIcX47Cuo7VI9RjqWTcTWIZdR0Hl8qEYhX
	B6FcuI/J6WUsrkdSq+BILOtdihWwafm3APBD7tLJw8IgjfY7qanbrp+paanTfPSlryOyL/KssxtNo
	k0F0F3kk2hqoOo0MjnuHx8Jirh6Vmwry/10t1EGAEuBHP/3nyGtR9BiMsuAHQzHu14RM3pcnmCtgD
	yx/j3ztLigsR6lrXEohLfW7jyyTMPkWYtt+2pibKQ1R8GBrrhdDZ9chx/Gyc5Lvsr9i2uTtv+0ppo
	H6ghuBSeUMLf1uLs2RPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57Va-0007Lf-Rm; Tue, 03 Sep 2019 12:02:02 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57Uw-00070f-QT
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 12:01:25 +0000
Received: by mail-lj1-x243.google.com with SMTP id l1so15690790lji.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Sep 2019 05:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uZT9Sy6+pI8OaA77AxUE13vpGk87Gw3hQsms4uj5Zxg=;
 b=BnzZZXx7Ah6s5yXgig2bVJYbMjhtblj/vN0EnvdWcx3RP458SNgnOpPje9l9timKCn
 uNtvQVI6K4VKN371t52GegZkG8lCb81XooUrkZg1UMJQRqLpDuG9TWLAUIayfrxdDAC0
 TxvZSAtSrLYHVvqMFkefmBicQohvPxFT6GusnYcTEMn0hz8BZZq022vrYxaTz/5Z0xFL
 WnqlJungizmtpTHAPLadSoCzP5TU7YvXnbpHktGZa6eVbcGNfj2zd+ZdbQ4ptp2hes3j
 YxHiQe7JC+oShxMr8Rc4fcvCM8pBr6Oi1AHBmRGmMsq673+dgbcPsRfOAfuW5SUrWeZh
 w6IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uZT9Sy6+pI8OaA77AxUE13vpGk87Gw3hQsms4uj5Zxg=;
 b=CsvVXQnScMA9S+Ml+KMHvxY8EdbMiz54jpfQZ4iCqkg37+OV+H6IcGlxmN2r/Ko+Qa
 wiz1XcOFWHwq2lrtuf1rP9eAHRxZAGd4oFKYR1zsHpmlRSvkJDnkY2oTxvl+RQNaNH08
 fxF9oHlC/T2MQY8kiW5n1XpD+P5qeWor7kT1iovnlhzSSBDhZi4rrU8dOArGiPTeeMUC
 /mqNLFX6MG2Mw73zR1WqeBND+JQEisIWScocfRN8xGtwiQhNbfCz2gs+wJzVnoUJBKdE
 jbdTH6IMWyT5jqaQO61iwTF+FZhJHubXlL0CdqtqrKeieUnIVrFS0/gOy/3sVNCePQo3
 gwOA==
X-Gm-Message-State: APjAAAUkk+IB6Ub9u3IKD+wici2Yv22sfaFg1CfkdlhHoZonKwrhkfal
 aW6gwRMo04Y957ZWRjUPAyKe8BaW
X-Google-Smtp-Source: APXvYqxWUqte3Uv3bg0mHqbxbS0eevRDbMiauSQbaBFSSOyLF1RVRNY+50yo2MXVhP/mVw7WyqMUxg==
X-Received: by 2002:a2e:9250:: with SMTP id v16mr13257284ljg.199.1567512079534; 
 Tue, 03 Sep 2019 05:01:19 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id q26sm2811965lfd.53.2019.09.03.05.01.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 05:01:19 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	John Crispin <john@phrozen.org>
Date: Tue,  3 Sep 2019 14:01:12 +0200
Message-Id: <20190903120112.8572-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_050122_915517_0BE09D23 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH procd] system: reject sysupgrade of invalid
 firmware images by default
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyB2YWxpZGF0aW9u
IHN0ZXAgY2FuIGJlIGJ5cGFzc2VkIGJ5IHBhc3NpbmcgImZvcmNlIiBhcmd1bWVudC4gVGhpcwpp
cyB2ZXJ5IHNpbWlsYXIgdG8gdGhlIC9zYmluL3N5c3VwZ3JhZGUgYmVoYXZpb3IgYW5kIC0tZm9y
Y2UuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0t
LQogc3lzdGVtLmMgfCAxNCArKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3lzdGVtLmMgYi9zeXN0ZW0u
YwppbmRleCA4OTZhMTAzLi4zOGE4Nzk5IDEwMDY0NAotLS0gYS9zeXN0ZW0uYworKysgYi9zeXN0
ZW0uYwpAQCAtNDkwLDYgKzQ5MCw3IEBAIHN0YXRpYyBpbnQgdmFsaWRhdGVfZmlybXdhcmVfaW1h
Z2Uoc3RydWN0IHVidXNfY29udGV4dCAqY3R4LAogCiBlbnVtIHsKIAlTWVNVUEdSQURFX1BBVEgs
CisJU1lTVVBHUkFERV9GT1JDRSwKIAlTWVNVUEdSQURFX1BSRUZJWCwKIAlTWVNVUEdSQURFX0NP
TU1BTkQsCiAJU1lTVVBHUkFERV9PUFRJT05TLApAQCAtNDk4LDYgKzQ5OSw3IEBAIGVudW0gewog
CiBzdGF0aWMgY29uc3Qgc3RydWN0IGJsb2Jtc2dfcG9saWN5IHN5c3VwZ3JhZGVfcG9saWN5W19f
U1lTVVBHUkFERV9NQVhdID0gewogCVtTWVNVUEdSQURFX1BBVEhdID0geyAubmFtZSA9ICJwYXRo
IiwgLnR5cGUgPSBCTE9CTVNHX1RZUEVfU1RSSU5HIH0sCisJW1NZU1VQR1JBREVfRk9SQ0VdID0g
eyAubmFtZSA9ICJmb3JjZSIsIC50eXBlID0gQkxPQk1TR19UWVBFX0JPT0wgfSwKIAlbU1lTVVBH
UkFERV9QUkVGSVhdID0geyAubmFtZSA9ICJwcmVmaXgiLCAudHlwZSA9IEJMT0JNU0dfVFlQRV9T
VFJJTkcgfSwKIAlbU1lTVVBHUkFERV9DT01NQU5EXSA9IHsgLm5hbWUgPSAiY29tbWFuZCIsIC50
eXBlID0gQkxPQk1TR19UWVBFX1NUUklORyB9LAogCVtTWVNVUEdSQURFX09QVElPTlNdID0geyAu
bmFtZSA9ICJvcHRpb25zIiwgLnR5cGUgPSBCTE9CTVNHX1RZUEVfVEFCTEUgfSwKQEAgLTUzNSw5
ICs1MzcsMTUgQEAgc3RhdGljIGludCBzeXN1cGdyYWRlKHN0cnVjdCB1YnVzX2NvbnRleHQgKmN0
eCwgc3RydWN0IHVidXNfb2JqZWN0ICpvYmosCiAJdmFsaWQgPSB2YWxpZGF0aW9uW1ZBTElEQVRJ
T05fVkFMSURdICYmIGJsb2Jtc2dfZ2V0X2Jvb2wodmFsaWRhdGlvbltWQUxJREFUSU9OX1ZBTElE
XSk7CiAJZm9yY2VhYmxlID0gdmFsaWRhdGlvbltWQUxJREFUSU9OX0ZPUkNFQUJMRV0gJiYgYmxv
Ym1zZ19nZXRfYm9vbCh2YWxpZGF0aW9uW1ZBTElEQVRJT05fRk9SQ0VBQkxFXSk7CiAKLQlpZiAo
IXZhbGlkICYmICFmb3JjZWFibGUpIHsKLQkJZnByaW50ZihzdGRlcnIsICJGaXJtd2FyZSBpbWFn
ZSBpcyBicm9rZW4gYW5kIGNhbm5vdCBiZSBpbnN0YWxsZWRcbiIpOwotCQlyZXR1cm4gVUJVU19T
VEFUVVNfTk9UX1NVUFBPUlRFRDsKKwlpZiAoIXZhbGlkKSB7CisJCWlmICghZm9yY2VhYmxlKSB7
CisJCQlmcHJpbnRmKHN0ZGVyciwgIkZpcm13YXJlIGltYWdlIGlzIGJyb2tlbiBhbmQgY2Fubm90
IGJlIGluc3RhbGxlZFxuIik7CisJCQlyZXR1cm4gVUJVU19TVEFUVVNfTk9UX1NVUFBPUlRFRDsK
KwkJfQorCQlpZiAoIXRiW1NZU1VQR1JBREVfRk9SQ0VdIHx8ICFibG9ibXNnX2dldF9ib29sKHRi
W1NZU1VQR1JBREVfRk9SQ0VdKSkgeworCQkJZnByaW50ZihzdGRlcnIsICJGaXJtd2FyZSBpbWFn
ZSBpcyBpbnZhbGlkXG4iKTsKKwkJCXJldHVybiBVQlVTX1NUQVRVU19OT1RfU1VQUE9SVEVEOwor
CQl9CiAJfQogCiAJc3lzdXBncmFkZV9leGVjX3VwZ3JhZGVkKGJsb2Jtc2dfZ2V0X3N0cmluZyh0
YltTWVNVUEdSQURFX1BSRUZJWF0pLAotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
