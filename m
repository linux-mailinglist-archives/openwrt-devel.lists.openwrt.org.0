Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC211EE9D5
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 19:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qif9bNuBDVkLjwtGFdJTbla7IcEU7kSxPdnOdR++AiM=; b=bFATwxq/ZTD8Oz
	Y/CF4AGMmHMw/4IPXvDYF+5rYhtxJ7pp84RhsFpaAHDu6/v6+fKTz/ML5tpjupe6ew/KlgWsBZrpJ
	Cpx44rernA11lmiBwpufDTJm14x4IHOvwu4BbFx8lyKiLm9+KfbbUwSRtw/CHVmJf4+VlzxlKMdvY
	KjNocnCK8wAgUFN+x2Y0umaKVQw4CIYKj7gzyImdK+E08nG6FyR4AFyIDfBF80YlU1TJIPxIU3kEJ
	XtGWEI+Y36jSVL0X4Ukzj0Qt//z+Hytnssr9VCVh6670yiyEerc2BNHNinxlGntV7i8wCm0EcI2ZI
	sVwnfCUnuD21XqOrnUKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgu4V-0001qj-UH; Thu, 04 Jun 2020 17:54:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgu4G-0001hc-T3
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 17:54:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id t18so7105963wru.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 10:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p4N8EQ4OB2GAqCL+/ptX0oyfni0B7BZisMz8ou8runA=;
 b=Z4FCo9HuEIh4VJfQ602ZAD8xvLUmatEP2L7vV00lZl18GdtVA0Ow7RL50l6hVIKah9
 SfSHGExJv3e+2P5yXpCsWil1SDcDyBH6AwYZ5+4Gy6HxgCYeY81GVwskSRqAot0ueZLQ
 OXhb5Ye+j6s089HW5Og2EMJ3/Tx6LKbUakd6ooo9Ajdij6OIqAN/OBbSwlU2C2R2Le/g
 BlYyFmM5GfBwkedjZ3dhg9oWnlx5P2Pvvm/b0sg/i3KrpAgcX9i9KUPyYxRhr1g1RqYf
 JvprorYbTIrzHVaiHIEJnaVbaUW17tuxB7PhzemqZStfi+zBAxS+YVwH2qvThZo8fv1o
 DiTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p4N8EQ4OB2GAqCL+/ptX0oyfni0B7BZisMz8ou8runA=;
 b=e5m2GhQK2Vqr0TqrBt98jFnn7Ew8LBe9RVCIk56n9oE7IoVaSRwdkrSAiJnj3qrzEG
 m4qLGKRY4jXQluMlMkXM2b8AIaV839Ecfodc267cBreNKLGA/RH4WI0MPpPxWNVOYa8w
 xFpueZ4d/t3F4OYbXUyZI+vUUNhIOJv3wr3VdHT+Xv784g0vWHwv+Uw9UM1ktXg0R3FY
 zuBadg8mh7Hogcu9VRvSqdoVqDhD5iWNUt1yqgD1DVd3kLlLjh6b94sHTeSbajIVutQD
 5mOKpLtD5oZFAonhWviSDmhEKRWaBDuPH/kxweWvtEyQ/EgG/Ea24QcRnkWW0JjN9yPn
 K3eA==
X-Gm-Message-State: AOAM530h85g9xFGVPz45wIvoQTGsbPMOw3fsbsHmFOccN6yby72qppbO
 9DneKK4laIqRHtTF4eh8JRrEmC3J
X-Google-Smtp-Source: ABdhPJx9rPqqii5X7/KoxFohvIYQRFEuGQrAXUVbuOhAFKZ3/0JhM+E7Qdn69qm50k4tHExvbhrTJQ==
X-Received: by 2002:adf:fd41:: with SMTP id h1mr5822609wrs.374.1591293255577; 
 Thu, 04 Jun 2020 10:54:15 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id g3sm10046457wrb.46.2020.06.04.10.54.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 10:54:14 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 04 Jun 2020 19:46:00 +0200
Message-ID: <3728185.vRv2hRhR9W@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_105416_934705_48905E1D 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/4 v2] bcm63xx: image: don't add the CFE to
 the sercomm factory
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
Cc: noltari@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlcmUgaXMgbm8gbmVlZCB0byBpbmNsdWRlIHRoZSBDRkUgYm9vdGxvYWRlciBpbiB0aGUgU2Vy
Y29tbSBmYWN0b3J5CmltYWdlcy4KClRoZXJlIG1pZ2h0IGJlIGEgY2FzZSB3aGVuIHRoaXMgY291
bGQgYmUgdXNlZnVsOgogIC0gV2UgYXJlIHJ1bm5pbmcgdGhlIHN0b2NrIGZpcm13YXJlIG9uIHRo
ZSBmaXJzdCBTZXJjb21tIGltYWdlCiAgLSBUaGUgc2Vjb25kIHBhcnRpdGlvbiBzdG9yaW5nIHRo
ZSBib3Rsb2FkZXIgd2FzIGVyYXNlZCAodW5saWtlbHkpCkV2ZW4gaW4gdGhpcyBjYXNlIGZsYXNo
aW5nIGFuIGltYWdlIHdpdGhvdXQgYSBib290bGFkZXIgaXMgaGFybWxlc3MuCgpEb24ndCBpbmNs
dWRlIHRoZSBib290bG9hZGVyIGluIHRoZSBmYWN0b3J5IGltYWdlIGNyZWF0aW9uIGFuZCByaWQg
b2YgdGhlCnJpc2sgb2YgZmxhc2hpbmcgZmFjdG9yeSBpbWFnZXMgd2l0aCBhbiB1bnRlc3RlZCBi
b290bG9hZGVyIHBhcnRpdGlvbi4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBHb256w6FsZXogQ2Fi
YW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6IMOBbHZhcm8gRmVybsOhbmRl
eiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQpDaGFuZ2VzIGluIHYyOiByZWZyZXNoCgog
dGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUgfCAxMiAtLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgv
YmNtNjN4eC9pbWFnZS9NYWtlZmlsZSBiL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2Vm
aWxlCmluZGV4IDA1OTNkYWNiNDQuLjVlYzMxZjYyMDcgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51
eC9iY202M3h4L2ltYWdlL01ha2VmaWxlCisrKyBiL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdl
L01ha2VmaWxlCkBAIC0yMTgsMjAgKzIxOCw4IEBAIGRlZmluZSBCdWlsZC9jZmUtc2VyY29tbS1w
YXJ0CiAJCS0tcGFydC1uYW1lIHJvb3Rmc19saWIgXAogCQktLXBhcnQtdmVyc2lvbiAkKFNFUkNP
TU1fVkVSU0lPTikKIAotCXJtIC1yZiAkQC1ib290bG9hZGVyCi0JbWtkaXIgLXAgJEAtYm9vdGxv
YWRlcgotCWNwICQoS0RJUikvYmNtNjN4eC1jZmUvJChDRkVfUkFNX0ZJTEUpICRALWJvb3Rsb2Fk
ZXIvJChDRkVfUkFNX0pGRlMyX05BTUUpCi0JJChjYWxsIEJ1aWxkL2NmZS1qZmZzMiwkQC1ib290
bG9hZGVyKQotCSQoY2FsbCBCdWlsZC9wYWQtdG8sJChCTE9DS1NJWkUpKQotCSQoVE9QRElSKS9z
Y3JpcHRzL3NlcmNvbW0tcGFydGl0aW9uLXRhZy5weSBcCi0JCS0taW5wdXQtZmlsZSAkQCBcCi0J
CS0tb3V0cHV0LWZpbGUgJEAuYm9vdGxvYWRlciBcCi0JCS0tcGFydC1uYW1lIGJvb3Rsb2FkZXIg
XAotCQktLXBhcnQtdmVyc2lvbiAkKFNFUkNPTU1fVkVSU0lPTikKLQogCW12ICRALmtlcm5lbF9y
b290ZnMgJEAKIAlkZCBpZj0kQC5yb290ZnNfbGliID4+ICRACi0JZGQgaWY9JEAuYm9vdGxvYWRl
ciA+PiAkQAogZW5kZWYKIAogZGVmaW5lIEJ1aWxkL2NmZS1zZXJjb21tLWxvYWQKLS0gCjIuMjcu
MAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
