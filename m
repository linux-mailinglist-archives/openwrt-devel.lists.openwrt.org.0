Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB8A68059
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 19:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QvpLD58ItUdx7Nw4r/We/Fi3nmBczuopTpvNUBBk15Q=; b=AeKTHjFejM3kta
	os3ouPBzyGx7udfMVNOakAYp23sIhK/4TK3b4ltmK4/n7YFJxuc3JBtwt57YNpEomCqUeg6XHcBfl
	pjCKAHBWbrow20uSnEKcYLsQq91259QMVfsyxHawL8hxtEhNWJ+MCo3uRATmDoDntU6l2pWquKAE/
	9JkSfZ21Xw/j8WzuJediJHhZP1r9u9ZP9TOFBKacdzjgtT3cyeg7vlOZ15yBTAhtZipRADkmdeJuV
	PVLVYuJ0MAqPfZPlUB54iz5OwmEJXrXgDicQ0qkI+11z6jKdgl6geaYda+NWIFKjb2HEyWynO2rP9
	LJ1W45qRp93gIp7XiMnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmhrJ-0001H8-Vl; Sun, 14 Jul 2019 17:00:22 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmhr8-0001GS-Ik
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 17:00:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id v24so13835257ljg.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 10:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/CQCEJUKqIhL6ZMtfUJLI4rRaB1xkH0MGvQulKcxDI0=;
 b=W9b6y/V7ARshxGEDBvm0deBbhbsH9REA7Dy3JKX5LCYZMTeZjmMG/zrxrdDoSRxegt
 6nDg9qSO8ywsD2GH+aC9XqhI97YABz1ulVu9rCPJDId73YKovYNiw86B9d31rhKPz1IH
 U1dqUHXrKw6YOAtptvFPKlqVDKw7pA62VkqIrf73PtftQQVSDKoQNdSpqsbfGMYe1u27
 6U/XuNLnwLDChT37XTEY33TIFQHpN0Fgf3HLZNyPLIzqXOMShD/BtYNkL1LX7HdXwEzB
 g4RmtCDH8K8qclfA3xS7+3bM99Js7LIjeqrcmXqlHtmOJOf1VK4rKjh6XR/cRMGVbaGy
 xJ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/CQCEJUKqIhL6ZMtfUJLI4rRaB1xkH0MGvQulKcxDI0=;
 b=Pvg90veOVRWUSGoDvg5qVLLF+/tz3orGBXx8WTLzMdjfYRqeHBl8FZO7Q26uHkF8Yp
 GpJVcbVJOnnCdLFoM+Q+d3Tj608zCkx594VVvqceViN30phuASrNR54GU+MMmGVGJkco
 s9uJcwv3251zo65kzGTt/QafMP7VkgZvlCwNtQj5fn6xFfJud+uAT/6jAI8P5+x9Ghga
 xUqyRXisaC7boDm0ecb7NN27YBEGpXFORkMJiHO09OrWTSSnp7ZjnDQ2zp52+DMNJQjg
 k4tgkgg3zifq4ySsj+4wOrNaji5pXLTfzVt5AoJ+zSV+vtghgQDf20JFvtIimAxNwmo5
 S6Fg==
X-Gm-Message-State: APjAAAWxCNMwNaGLh2+ZtJuZnjB7iPcEgkvE7+DmHfmj8iN3izTGLWUV
 VoK1LVRVn8lhvGx0/5MMkFwIAPFk
X-Google-Smtp-Source: APXvYqyNV+QeSYkiV1S6B8oNerY52CBjoMiGXMXzM6KJbBSAZ+PCU5ZBqZK3i2zYVtZBaObMMWA6kg==
X-Received: by 2002:a2e:8455:: with SMTP id u21mr11185984ljh.20.1563123607964; 
 Sun, 14 Jul 2019 10:00:07 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id y29sm2641845ljd.43.2019.07.14.10.00.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 10:00:07 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 14 Jul 2019 18:59:59 +0200
Message-Id: <20190714170000.8567-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_100010_650611_1595C16F 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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
Subject: [OpenWrt-Devel] [PATCH 1/2] mvebu: sysupgrade: don't use $ARGV in
 platform_check_image()
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKc3lzdXBncmFkZSBwYXNz
ZXMgaW1hZ2UgcGF0aCB0byBwbGF0Zm9ybV9jaGVja19pbWFnZSgpIGFzIGFuIGFyZ3VtZW50IHNv
Cml0IGNhbiBiZSBzaW1wbHkgYWNjZXNzZWQgdXNpbmcgJDEKClNpZ25lZC1vZmYtYnk6IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiB0YXJnZXQvbGludXgvbXZlYnUvYmFz
ZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9t
dmVidS9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L212
ZWJ1L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKaW5kZXggYjg2ZmQxNDc3ZS4u
NjU1MGRkNTliNyAxMDA3NTUKLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2Jhc2UtZmlsZXMvbGli
L3VwZ3JhZGUvcGxhdGZvcm0uc2gKKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2Jhc2UtZmlsZXMv
bGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKQEAgLTExLDcgKzExLDcgQEAgcGxhdGZvcm1fY2hlY2tf
aW1hZ2UoKSB7CiAJY2FzZSAiJChib2FyZF9uYW1lKSIgaW4KIAljem5pYyx0dXJyaXMtb21uaWF8
Z2xvYmFsc2NhbGUsZXNwcmVzc29iaW58Z2xvYmFsc2NhbGUsZXNwcmVzc29iaW4tZW1tY3xnbG9i
YWxzY2FsZSxlc3ByZXNzb2Jpbi12N3xnbG9iYWxzY2FsZSxlc3ByZXNzb2Jpbi12Ny1lbW1jfFwK
IAltYXJ2ZWxsLGFybWFkYTgwNDAtbWNiaW58c29saWRydW4sY2xlYXJmb2ctYmFzZS1hMXxzb2xp
ZHJ1bixjbGVhcmZvZy1wcm8tYTEpCi0JCXBsYXRmb3JtX2NoZWNrX2ltYWdlX3NkY2FyZCAiJEFS
R1YiCisJCXBsYXRmb3JtX2NoZWNrX2ltYWdlX3NkY2FyZCAiJDEiCiAJCTs7CiAJKikKIAkJcmV0
dXJuIDAKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
