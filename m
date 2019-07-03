Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F9C5E0C6
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 11:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8Jnslcd95Bd5EohHu7LgYA5LXI+8ObgMus6eu9QJdvU=; b=PNuXlocnx1gr7E
	bQ0w3owXp9wdJpJRjuU77UmVl+XXyimocjotgLukcZIykzQsir1+U/GuMTaZlb4ENpJBp5Atqq9DF
	L3UjzCFiUrl0QyTLYsoSjV/PgSdu/k7QjiR2bvwGbwXwqNDCg1xna06A0Smo9irRK1pE+oC1kJXUk
	xr6ULObS/844O4+0ncuLVV2kN9jo6YO+Q8+2XJU/VYZBxLKognkQFpzzPMxMVSorQT8Bv5LGuYCdA
	wTAU+4p7zYokx5Or8Xvl3eP+YwJRAA7OL2Pdtya4ti3tXSXYTFK67beK2B9Iy8krJ7rgzBHsq9txR
	+diK1mmEUXvxTUR1yzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibO6-00042I-9e; Wed, 03 Jul 2019 09:17:14 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibNQ-00041e-LH
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 09:16:34 +0000
Received: by mail-lf1-x12b.google.com with SMTP id y17so1261573lfe.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jul 2019 02:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v7HMhr5XyIX/lM0ZJ7YaQYRV88J5FA0VvCdA9SJTEgE=;
 b=CQLVwKY4bJkL7594sTQn0o0nY9Arrl55e8MF7Lrlul5HJ64uwvnfK6j3wQY9ClEtkP
 PpW9MPk2V84qNKqIll4qEZ30J/aFv+tF/jMUkewYT3g0WlPHH7j3VKeDpQPwnwEPTfAp
 Uo1eoJ3R2XjOtgfQy1szzS3eEHlvjgPA556uh3TG8gAoufEobQ1tT0HQ0zieEqeKiuxu
 HCoiEawSbQzDmWKcAt0bu/p/v4fHFy0+VBzrOmc69JAqlKYaCYolV00F41q7VujOz/W3
 Qi1ebfRPH0QkE8y0xPUGQd+BJBN0YUr0xzLwOLWuDjoP8tN1ZbjhXiUS+mHgZ1piiUwY
 zEsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v7HMhr5XyIX/lM0ZJ7YaQYRV88J5FA0VvCdA9SJTEgE=;
 b=tYR8U20/MxJfeQCfQF9hSi48PcZXuCWLxkSYoqe798OUVzr1WOVxZSKcGCqvzp2zQE
 W69PeUDB6xGz+FKX5J21Sk77bzOdbdPZv6lIPsO5iLDdOEWEI4fHaGoGmO5lfS8veLzy
 EDhmABal83u9TDpVVMGSwjoJ0hPHlQfvAWdj5cLhKHPWKW3Ky8vJY2jOGyEhZNingx7s
 V/DNjSdhS9QZWWngdUgFvWNIT0DXKfQwa0hJxaXpA5hFufSGP+3V02lqumxPkHI8MhZH
 Hc5pmKPzV/8NJedSDOyOfObS7DMrFeiwN7Vx88/cAXlU1aFQTWv909SqCpe0lN2ebBrW
 7m4Q==
X-Gm-Message-State: APjAAAXWOyxF26wP7NCp+04lm2bKAJ8Uh0+KtHgN6vglHzFpjY3RdoJV
 4fv3KgRbZhbnqymicBbanZ3hmRAS
X-Google-Smtp-Source: APXvYqzcqXmZLdC/+dreNN10qmWjTLjXfCiitgg6tlLva8LTO6pX5a0Z1RSVySLRScJjh2Szbmmo/A==
X-Received: by 2002:ac2:4904:: with SMTP id n4mr16753747lfi.53.1562145390511; 
 Wed, 03 Jul 2019 02:16:30 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id h78sm359814ljf.88.2019.07.03.02.16.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 02:16:29 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  3 Jul 2019 11:16:21 +0200
Message-Id: <20190703091622.10057-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_021632_701134_C3478E67 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] rpcd: implement service_running() in init.d
 script
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSXQgYWxsb3dzIGNoZWNr
aW5nIGlmIHNlcnZpY2UgaXMgcnVubmluZy4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNr
aSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBwYWNrYWdlL3N5c3RlbS9ycGNkL01ha2VmaWxlICAg
ICAgICB8IDIgKy0KIHBhY2thZ2Uvc3lzdGVtL3JwY2QvZmlsZXMvcnBjZC5pbml0IHwgMyArKysK
IDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvcGFja2FnZS9zeXN0ZW0vcnBjZC9NYWtlZmlsZSBiL3BhY2thZ2Uvc3lzdGVtL3JwY2Qv
TWFrZWZpbGUKaW5kZXggMTFmZTI1NGQ2Zi4uODU0Y2M0M2NlYSAxMDA2NDQKLS0tIGEvcGFja2Fn
ZS9zeXN0ZW0vcnBjZC9NYWtlZmlsZQorKysgYi9wYWNrYWdlL3N5c3RlbS9ycGNkL01ha2VmaWxl
CkBAIC04LDcgKzgsNyBAQAogaW5jbHVkZSAkKFRPUERJUikvcnVsZXMubWsKIAogUEtHX05BTUU6
PXJwY2QKLVBLR19SRUxFQVNFOj0yCitQS0dfUkVMRUFTRTo9MwogCiBQS0dfU09VUkNFX1BST1RP
Oj1naXQKIFBLR19TT1VSQ0VfVVJMPSQoUFJPSkVDVF9HSVQpL3Byb2plY3QvcnBjZC5naXQKZGlm
ZiAtLWdpdCBhL3BhY2thZ2Uvc3lzdGVtL3JwY2QvZmlsZXMvcnBjZC5pbml0IGIvcGFja2FnZS9z
eXN0ZW0vcnBjZC9maWxlcy9ycGNkLmluaXQKaW5kZXggNGEzMWFhMGQwMC4uNzdlYmNiZTZjYiAx
MDA3NTUKLS0tIGEvcGFja2FnZS9zeXN0ZW0vcnBjZC9maWxlcy9ycGNkLmluaXQKKysrIGIvcGFj
a2FnZS9zeXN0ZW0vcnBjZC9maWxlcy9ycGNkLmluaXQKQEAgLTE5LDMgKzE5LDYgQEAgcmVsb2Fk
X3NlcnZpY2UoKSB7CiAJcHJvY2Rfc2VuZF9zaWduYWwgcnBjZAogfQogCitzZXJ2aWNlX3J1bm5p
bmcoKSB7CisJcHJvY2RfcnVubmluZyBycGNkCit9Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
