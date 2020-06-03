Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB81E1ED8C7
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 00:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IUfOoZTIr3ayv7So1rrHZ4PZuzu7jnrAzam69lz2hh0=; b=HmXp1VhgZyi9lm
	dC+OhBBIhJsMOWriaxyL5gGtS6Q35gqKrf47GcZ0a/04LtnZZP+oCTdGxzAaaeiUYeHTeY0V06Hb2
	PPrApa7g5UgPZe2AxNWx4aNbdYu6f0soKQbp6VFhxX9l4Pz2SdrOEAVS7lfP60vB8A+SobCpGytA2
	xG38trSLi8KQ3+/3JculTOuE7Y+fi2Elx2TVr78+J4BRm/yoAm12QWY77lfOmuieAh4TqX/sd6+U0
	7ePy9Y5Wc7beD6ETPHCuE6HD4WOa2Rx3Y51ZdrXeWSgXv+qWeZAeVWjffkqMEmUha+KwYwprhC0Nn
	vvntfj8AoQ7Wz40e2HWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgcCn-0004Jj-F5; Wed, 03 Jun 2020 22:49:53 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgcC5-0003bU-5V
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 22:49:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so4087675wru.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 15:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cGgkVXXPkd9+HdalIUFgh0emd2voomeMeX8L+L0QNpo=;
 b=UOPGYB8y5SN6O5/Oskqc1pErptw7UIpQtaYbEivreO9ajDe4va/wxSRueSctevu9TK
 rE1ROb+c3QSNKUnbK5cTcQrOU3ivgTRdfvb9Y/vgIdu7UHQMI3b0DJmOVeIknFfDm9OX
 oiZnJJ6alniiJz14KA5+dogcv2DQ4VHyRTmjLdQ6MnrAzocwEip6eOojuEfuyVCofhb+
 P7a8/vC0bsnamrB4GiFsXh8lR/x4biQ7D6T8c5fEIp3c/Ztm3FZLs8ZpHmC3HEup9ESa
 NRyWrg47x1Vd9HVoWQ7M5yGXOnwXt3VwVbRa/+YIREVixDQpqjHdClLRolXhG0Qy64t4
 32HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cGgkVXXPkd9+HdalIUFgh0emd2voomeMeX8L+L0QNpo=;
 b=VYFZ83FydZ7suIJoygrJU52aHU+CGx6HYNIL2uFH/dQ/YaajAjW93DAcounlDHZf8p
 Rrn/sLc9vlDxTWzz57P6PDSF3NDqFc39O7EgUdw2+c3MSN1blGkREcIvTOjeCCf0KVuV
 7KhBOTWiB6tJrT61Pm6a1XUemp4iHzB2oYU7W7K1aarDKx2gC7po+mGzs/Wt6a8381B1
 /v9jd6bmNuAh7PFXBmA66fcJHyp5VHfqnu5xaUz0KY9YEx0VDjplwkrKMVu22uBojJKk
 5kPctujJ7d+6KCkJx3OG2hERQWfCf5PtFIKUrqDszlXDwvRM7CHLFYKvQGt/3t4UOR+X
 APCQ==
X-Gm-Message-State: AOAM533DvRoKtRRp5Xccm+D9pIco9wBOY9P0HGaFQPbU60Hp3tONSHG2
 riLtN4Xr0nyY82N2jhSV1ljKxoOj
X-Google-Smtp-Source: ABdhPJwc8PvhHLMPOPrrYy57oto2ABiI3EY9RzkFEUgsEbsz+l3PoqjJo/AgjgXynPNx6PeqFUJ9yw==
X-Received: by 2002:adf:fd49:: with SMTP id h9mr1525248wrs.67.1591224547381;
 Wed, 03 Jun 2020 15:49:07 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id c16sm5317256wrx.4.2020.06.03.15.49.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 15:49:06 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 04 Jun 2020 00:48:13 +0200
Message-ID: <3608830.1HcjCr2GE9@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_154909_202464_BCDDDC86 
X-CRM114-Status: UNSURE (   6.09  )
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
Subject: [OpenWrt-Devel] [PATCH 2/4] bcm63xx: image: don't add the CFE to
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
YW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KLS0tCiB0YXJnZXQvbGludXgvYmNtNjN4eC9pbWFn
ZS9NYWtlZmlsZSB8IDEyIC0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlIGIv
dGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUKaW5kZXggZWI0Yjc4YjA2YS4uZTU3
Yjk5MzkxZiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUK
KysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUKQEAgLTI0MiwyMCArMjQy
LDggQEAgZGVmaW5lIEJ1aWxkL2NmZS1zZXJjb21tLXBhcnQKIAkJLS1wYXJ0LW5hbWUgcm9vdGZz
X2xpYiBcCiAJCS0tcGFydC12ZXJzaW9uICQoU0VSQ09NTV9WRVJTSU9OKQogCi0Jcm0gLXJmICRA
LWJvb3Rsb2FkZXIKLQlta2RpciAtcCAkQC1ib290bG9hZGVyCi0JY3AgJChLRElSKS9iY202M3h4
LWNmZS8kKENGRV9SQU1fRklMRSkgJEAtYm9vdGxvYWRlci8kKENGRV9SQU1fSkZGUzJfTkFNRSkK
LQkkKGNhbGwgQnVpbGQvY2ZlLWpmZnMyLCRALWJvb3Rsb2FkZXIpCi0JJChjYWxsIEJ1aWxkL3Bh
ZC10bywkKEJMT0NLU0laRSkpCi0JJChUT1BESVIpL3NjcmlwdHMvc2VyY29tbS1wYXJ0aXRpb24t
dGFnLnB5IFwKLQkJLS1pbnB1dC1maWxlICRAIFwKLQkJLS1vdXRwdXQtZmlsZSAkQC5ib290bG9h
ZGVyIFwKLQkJLS1wYXJ0LW5hbWUgYm9vdGxvYWRlciBcCi0JCS0tcGFydC12ZXJzaW9uICQoU0VS
Q09NTV9WRVJTSU9OKQotCiAJbXYgJEAua2VybmVsX3Jvb3RmcyAkQAogCWRkIGlmPSRALnJvb3Rm
c19saWIgPj4gJEAKLQlkZCBpZj0kQC5ib290bG9hZGVyID4+ICRACiBlbmRlZgogCiBkZWZpbmUg
QnVpbGQvY2ZlLXNlcmNvbW0tbG9hZAotLSAKMi4yNy4wCgoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
