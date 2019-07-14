Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A72B6811E
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 22:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JVJ5lzYtoB8kCs2DOzu7n4F6CKVgibDhfWp8NpRjoGU=; b=syLarVNaQB10o6
	0qVebXmG1DJqU/Rf1gYYkAImTuDr50KDU9nNJJ+c3iDPAJyWGc9Ae5P7l3bLt8++edzMxY2Ov/kgK
	SZBHaUwUVTJFLEdC1fARHwxp0ilM8SD8BSsJtOyx4gmUAUuWFH3Fu9P3ATeT8hxhObXNCzOWPWj/E
	x8knLFGM/8UwqKitz2HSU2Vy8/G3XRpME22QeQjjfKvNR7zYlB6yRm4ODfiRAx+1KxYvJJcVp03T7
	bprxtUfbry7hYf3Zjba5JNxj6gc7//bVqaOlVUmyEbC53VYxh2aLTu0gsXeU2Ib1l0xQ6w3fpLijM
	BjBAaUUiUCA/0tky3Oxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmkoG-0005JB-Bu; Sun, 14 Jul 2019 20:09:24 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmko8-0005Iu-WD
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 20:09:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id k18so14051528ljc.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 13:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VeXBDbIkHuSPfT3GllUM+Y1QoSznL5HgCW7gYSMWAmk=;
 b=fayfTozsCTbGrxF8eLwNE87cYLUrVD/BWLuynpmFDo3m9CAnqAHLGQ0X6pDvNSyMFS
 3YdfJY1ewV/EhLYvNE4wz1E9LsbsssYLXL4dSGUrnNqx4KN/nISYfxOfBbyiesJJA8ZX
 lR8nsY9XQhrcRMzJ9rfaZBPBjNCBCU0yC3+wCoHXbx5ErfHEsXK5SfQqHdaretLrzDpZ
 jDhOPsK84tScFCA/LrxiLUpqcf4aBpjrt1qs1B0ZUbm8jpyfJq43nswkN7ZctGIKmz/h
 UuwZkHixbq4hKswpgU+On/+VugLurMvG5pNjX17ZH5RQnB1d86wH3phva+56FVkzndZG
 Gdew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VeXBDbIkHuSPfT3GllUM+Y1QoSznL5HgCW7gYSMWAmk=;
 b=Q3aJE3tejMgZgbxk0ZOEjHENnMSIQtvefDQ6oJQN0E/PhT5NPWWkaNoPgmu5FDoQb6
 TLyIZKw4JUHEG3O66iQdUWA7Z+6lHlXybepX9qV8sz8tkldwOGZuq9Ym1Vg1WMGh8wZ5
 BRvE6046bzc2tiNSJ2EC1J9mELfYa1cAYHJCr6ijlnVz5U5C8p50XhZ1WT/z+QoYdkG0
 xG/uyNqOxMM7OakHKMAw+ir+AIRey1j3WlmfVTKZgP8AVJP7EsgbEVda+KfnZaUt6ckX
 kQtHA5U2ngnsB+3KqGv8Cb9BrPhHkBxTlXZQ0/9anVTsLDnQN/2KEle4O3gxTYMzF+C9
 j4tw==
X-Gm-Message-State: APjAAAUQrPY/hnF0vvUifJTBRWHjdS3kweudCeXEWlvn/3vpMtuehgOw
 EaLpSXvv+pesyjBu09VPrVpGlbMG
X-Google-Smtp-Source: APXvYqzk8SnQoZSjoYHbgg6mMlLZCdytzc/s8pJ5bZbXgLaKjfl0WrFvttujdonrSYsMmIzC0MCQww==
X-Received: by 2002:a2e:301a:: with SMTP id w26mr11552857ljw.76.1563134952433; 
 Sun, 14 Jul 2019 13:09:12 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id q21sm2007430lfc.96.2019.07.14.13.09.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 13:09:11 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 14 Jul 2019 22:08:58 +0200
Message-Id: <20190714200858.12798-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_130917_064783_A48776BB 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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
Subject: [OpenWrt-Devel] [PATCH] mvebu: sysupgrade: drop
 platform_copy_config_sdcard() argument
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhhdCBmdW5jdGlvbiBk
b2Vzbid0IHRha2UgYW55IGFyZ3VtZW50cyBzbyBkb24ndCBwYXNzIGFueXRoaW5nIHdoZW4KY2Fs
bGluZyBpdC4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5w
bD4KLS0tCiB0YXJnZXQvbGludXgvbXZlYnUvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9y
bS5zaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9iYXNlLWZpbGVzL2xpYi91cGdyYWRl
L3BsYXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUv
cGxhdGZvcm0uc2gKaW5kZXggM2ZjNGZmNjYzNS4uNThlN2Q4M2U0ZSAxMDA3NTUKLS0tIGEvdGFy
Z2V0L2xpbnV4L212ZWJ1L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKKysrIGIv
dGFyZ2V0L2xpbnV4L212ZWJ1L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKQEAg
LTQwLDcgKzQwLDcgQEAgcGxhdGZvcm1fY29weV9jb25maWcoKSB7CiAJCTs7CiAJY3puaWMsdHVy
cmlzLW9tbmlhfGdsb2JhbHNjYWxlLGVzcHJlc3NvYmlufGdsb2JhbHNjYWxlLGVzcHJlc3NvYmlu
LWVtbWN8Z2xvYmFsc2NhbGUsZXNwcmVzc29iaW4tdjd8Z2xvYmFsc2NhbGUsZXNwcmVzc29iaW4t
djctZW1tY3xcCiAJbWFydmVsbCxhcm1hZGE4MDQwLW1jYmlufHNvbGlkcnVuLGNsZWFyZm9nLWJh
c2UtYTF8c29saWRydW4sY2xlYXJmb2ctcHJvLWExKQotCQlwbGF0Zm9ybV9jb3B5X2NvbmZpZ19z
ZGNhcmQgIiRBUkdWIgorCQlwbGF0Zm9ybV9jb3B5X2NvbmZpZ19zZGNhcmQKIAkJOzsKIAllc2Fj
CiB9Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
