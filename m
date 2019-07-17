Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D959C6B5E5
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 07:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HPzVJUbJ81mZFKaq54RG1zp1vtUgPUKSWbMq4wVPaQk=; b=n8yk+8/F3TJDnK
	ycPQ5JaxP0BXbSSijEoUtibnuHjUIJrf28jcx3w5TO7Scgu7dKGF8+HkheX1i8J0Y1QxSPWe9HYDF
	s2Y2xnwCm4pxCK8zOpP04mtlRxeHGB2osZpxP30tEkbf+UkNMnVAt7dIBPDnp4KMn4IENqwC9Icav
	s+OEnji7YPLILpW0z6Y1CDtugJbxanVARzlravIb3snFU2aYyea4DHQpVpNrClUc33dryaEHNleEv
	hRpJaqhk0KI235wOgWEi3e0cSPWOns5ck66cEdsezRolpSsnZ0d/N6/gxC7t4+CayY9uaEhgutnNq
	EycaQDu6rCYq1ku1sVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hncUL-0002y2-MZ; Wed, 17 Jul 2019 05:28:25 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hncU2-0002xX-1w
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 05:28:07 +0000
Received: by mail-lj1-x244.google.com with SMTP id m8so22250305lji.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 16 Jul 2019 22:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dK4jBDBlgHYDuQ3HCNQToIS17TEdc7uWppBULSjSwfM=;
 b=iPmfhZ/mPGQByMbT51kAtWlKXOBI+rHL6XWZwBBiSUwfizfbGWn0bA2tilU32smjoG
 2CWkjo0MfkniSVsszhw6w8ccKFsK6D1Kp/bcrnlwfEl3rZ5LVPq/hKHkXBpw2OTUViY2
 C8pVDfMwYZef/JtQySxwD5ZGSwqzKCU7XYdBOpoGrUzQbtJ096p4ldnBifnT0d4trsnU
 4v3pzW3XZGuQHkOUoobp714GjBzVy/FtWbxj//ngwOZy52fVsZNDfG8a6JyTA7OPc8iy
 ZHWjcADaXfokU4YdXBeCT6kLLCLwipSGj6WYljm0LGOA9wJSA5z2tyyrUvqppjdCiEwa
 QeIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dK4jBDBlgHYDuQ3HCNQToIS17TEdc7uWppBULSjSwfM=;
 b=SbEsGEFwEoMyf0ALo8545IERNKDpZFU2oV/xej1NcInS2A9HLixlwopdB6WTDp6F1f
 PJephqJWFwHC1OoGDCWDkhOg++HqVrq7vp7a7yJkyNsvNm1CFET1oxnYCVZxj618BDBH
 YfVSQv7bpZ+3TK+cUG3keCaFY5aIy5jVlU2QSmFkfbmNqindGaHEx4FB9tByjsUNEKvs
 RQqSrPY+tI7PcxTXDzRrP2LenLjq3OSa/HotDT4DHNR/EA9/w6X06YOSt7uf18yeT7J1
 xExgO8AbQTzLqDipks9IbwMvF08Aw+kBWR+MYP9QOJ8a/Ua2mTZXPp2r56UNchgbCuZu
 pw/w==
X-Gm-Message-State: APjAAAWrJOHfKSll23WoaamjDuopEGECaHPYDTBRrhTixfrJw7lskU6y
 wDRFsmkCcfWoPNbvPMolURNvYRZu
X-Google-Smtp-Source: APXvYqz7ZZbEtuOAUSCnOe8WIgHEYDqB5OfJ2j4MXX6ugVSYxVFfscCeyiUhppsrGYlAn96O8L1lOw==
X-Received: by 2002:a2e:6e0c:: with SMTP id j12mr19527959ljc.123.1563341282963; 
 Tue, 16 Jul 2019 22:28:02 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 189sm3545050lfa.0.2019.07.16.22.28.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 22:28:01 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jul 2019 07:27:49 +0200
Message-Id: <20190717052749.16609-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_222806_128880_CADBF5A0 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] imx6: sysupgrade: document Apalis code
 handiing rootfs_data
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
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSXQgc2hvdWxkIGhlbHAg
cGVvcGxlIHVuZGVyc3RhbmQgdGhhdCBjb2RlIGFuZCBwcmV2ZW50IGJyZWFraW5nIGl0CmR1cmlu
ZyBzb21lIGNsZWFudXBzLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBt
aWxlY2tpLnBsPgotLS0KIHRhcmdldC9saW51eC9pbXg2L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUv
cGxhdGZvcm0uc2ggfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS90YXJnZXQvbGludXgvaW14Ni9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRm
b3JtLnNoIGIvdGFyZ2V0L2xpbnV4L2lteDYvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9y
bS5zaAppbmRleCBjM2JlOWQ1NDI0Li5hMjkwYTQ2OWFkIDEwMDc1NQotLS0gYS90YXJnZXQvbGlu
dXgvaW14Ni9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCisrKyBiL3RhcmdldC9s
aW51eC9pbXg2L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKQEAgLTc4LDYgKzc4
LDEwIEBAIHBsYXRmb3JtX3ByZV91cGdyYWRlKCkgewogCiAJY2FzZSAiJGJvYXJkIiBpbgogCWFw
YWxpcyopCisJCSMgT24gQXBhbGlzIG92ZXJsYXkgZG9lc24ndCBnZXQgb3ZlcndyaXRlbiBzbyBp
dCBoYXMgdG8gYmUKKwkJIyBjbGVhcmVkIG1hbnVhbGx5LiBDYWxsIGpmZnMycmVzZXQgd2hpY2gg
ZmluZHMgInJvb3Rmc19kYXRhIgorCQkjIHZvbHVtZSAoZU1NQyBGMkZTIHBhcnRpdGlvbiB3aXRo
IHN1Y2ggYSBsYWJlbCkgYW5kIGVyYXNlcyBhbGwKKwkJIyBmaWxlcyBmcm9tIGl0LgogCQlbICIk
U0FWRV9DT05GSUciIC1lcSAwIF0gJiYgewogCQkJamZmczJyZXNldCAteQogCQkJdW1vdW50IC9v
dmVybGF5Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
