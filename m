Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7563D1C6101
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 21:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/rV40MiuCMbADZx4TUxsJoI0ljN7gi2xnh3QePYhNuY=; b=GrEY1Uh/+z+K38
	V69gKJqbwhgOhM4we16WcXHKBk+Eynn4ZgToGkJRTNQZPIbp3o9iEi2cUkmCW0R4H+i9J+n6QaWvN
	A8zmeyujnL69MkE0xy/QtqDXGwTSKdCBkPr4ItlMrfRNJqZYgJbfr64KqAgZjxJGzgFHbf0aUKy5N
	RgFMJjskaY8bH1OcXcVyWDfefcs7c25ZOJ6qfXPWiK4w6B93aawYthNdkipKux0GgKKj4hwpjTTBx
	6vMuJTWFx1LMNbOBxtYHYW1R6uSdLDcrJFWjjB7mZpuj3JTkmahNn0P/Ku/C/dH3OTojhGiVB2rQL
	LS2LHl4eCHoSiZQiPZRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW3DR-0001yY-Rt; Tue, 05 May 2020 19:26:53 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW3DJ-0001xh-PX
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 19:26:47 +0000
Received: by mail-lj1-x242.google.com with SMTP id f11so2904595ljp.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 05 May 2020 12:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8BkkEVVzhHNBDfORodOlaPQAjNINtQkR/C8pYkYO5gI=;
 b=JatnpH8WNizNTO08CkF9pwMeRnTi+EuDEPOoGVjuXqGn8oKmFssKuh48IFmEbBTpB0
 DGshvKKifASN6Z5U8F/Vd58puG7xeiHqf4GJGsTJ3NBcRiC0gZxURw/At1kYpwbWSkp9
 P/OuG4gkfVV3OKc4GgWv5zJ5YQPxvmJhsRHGZfMLX9d8cp0YEuWO2Jem06H2+gwVIoky
 jAHuTonW5a8XzXIg6dHaLknMUzt5hVr8tTEDeclgwN3yChwQxkXboIqf0efbJnnv/mKX
 dJi9ihMPFK1k0+5kDqZUAPKN9ffQ7bNPqu6PaGJqFd1CRZckja3UQGMHwa7LEYepNQ4h
 41dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8BkkEVVzhHNBDfORodOlaPQAjNINtQkR/C8pYkYO5gI=;
 b=lKNSojQ/GJJ6FOxHNIH4iFPLs23gmuH7HylCF050FUv0kTJq/hBT9ekkfvJQLBNguC
 qrhEb88pbeSNk3iTEB7moKCG+/F/PsBzpmjrpw/hw4bSlQSSE2SE9YslRwG0YhyymcJp
 t7nOWA6zvSB8Dxwp0l/IF0thb4RB6YycIl/+R/ZZcP99W5X0g9YlFC/xtF7t2M+05hCa
 F294gx2tYSq/G76KE14wNNaD3nhv+zd312/eJDJvHCQxVGCeL3lkqvlhppOBNqH11Yjh
 oqJadNtlecjFbnDRiLgDkYf0/tD5sBCQecE62rmDlS6EZA7YRpF8AWJQv35awUrcTiy3
 SSTA==
X-Gm-Message-State: AGi0PuZC4yTG+wSZfs3zhoXbYeP3kO+akPZcZ421Ah0Mjy09rsUvzaxf
 QFR7/F6GoEWB+srgET5G9domUzFP
X-Google-Smtp-Source: APiQypJ7eWKoyg/C7/nROoXfggGW/TpsUNODRswSHGDYs+PF1oxyblpGSpNPUdx5NMNwo7aKCBhnug==
X-Received: by 2002:a2e:b80b:: with SMTP id u11mr2822606ljo.212.1588706803253; 
 Tue, 05 May 2020 12:26:43 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id l18sm2375227ljg.98.2020.05.05.12.26.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 12:26:42 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 May 2020 21:26:32 +0200
Message-Id: <20200505192632.12154-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_122645_851550_85F1E2F5 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH fstools] blockd: use uloop_process for
 calling /sbin/hotplug-call mount
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKQXMgYmxvY2tkIHVzZXMg
dWxvb3AgY2FsbGluZyBhbnkgc2NyaXB0IGFuZCB1c2luZyB3YWl0cGlkKCkgY2FuIGVhc2lseQpy
ZXN1bHQgaW4gYSBsb2NrLiBJdCdzIGVub3VnaCBmb3Igc2NyaXB0IHRvIHVzZSAvYmluL3VidXMg
dG8gY2F1c2UgdGhhdC4KCkl0J3Mgbm90IGFuIG9wdGlvbiB0byBkcm9wIHdhaXRwaWQoKSBhcyBp
dCdzIGltcG9ydGFudCB0byBlLmcuIGNhbGwKbW91bnQgc2NyaXB0cyB3aXRoIEFDVElPTj1yZW1v
dmUgYmVmb3JlIHVubW91bnRpbmcgZGV2aWNlcy4gU28gc29sdmluZwp0aGlzIHByb2JsZW0gcmVx
dWlyZXMgdXNpbmcgdWxvb3BfcHJvY2Vzcy4KClVuZm9ydHVuYXRlbHkgdGhpcyBtZWFuczoKMS4g
VXNpbmcgY2FsbGJhY2tzIG1ha2luZyBjb2RlIHNsaWdodGx5IG1vcmUgY29tcGxleAoyLiBEcm9w
cGluZyB0aGF0IG5pY2UgZGV2aWNlc191cGRhdGVfY2IoKQoKV2l0aCB0aGlzIGNoYW5nZSBob3dl
dmVyIGhvdHBsdWcuZCAibW91bnQiIHNjcmlwdHMgY2FuIHNhZmVseSBjYWxsCiJ1YnVzIi4KClNp
Z25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBibG9j
ay5jICB8ICAgNCAtLQogYmxvY2tkLmMgfCAxMjcgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA4MCBpbnNlcnRp
b25zKCspLCA1MSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9ibG9jay5jIGIvYmxvY2suYwpp
bmRleCBjNGFlODhhLi5hYzk1NDY0IDEwMDY0NAotLS0gYS9ibG9jay5jCisrKyBiL2Jsb2NrLmMK
QEAgLTEyMTgsMTAgKzEyMTgsNiBAQCBzdGF0aWMgaW50IG1haW5fYXV0b2ZzKGludCBhcmdjLCBj
aGFyICoqYXJndikKIAogCQkJYmxvY2tkX25vdGlmeShwci0+ZGV2LCBtLCBwcik7CiAJCX0KLQl9
IGVsc2UgaWYgKCFzdHJjbXAoYXJndlsyXSwgImF2YWlsYWJsZSIpKSB7Ci0JCWVyciA9IGhvdHBs
dWdfY2FsbF9tb3VudCgiYWRkIiwgYXJndlszXSk7Ci0JfSBlbHNlIGlmICghc3RyY21wKGFyZ3Zb
Ml0sICJ1bmF2YWlsYWJsZSIpKSB7Ci0JCWVyciA9IGhvdHBsdWdfY2FsbF9tb3VudCgicmVtb3Zl
IiwgYXJndlszXSk7CiAJfSBlbHNlIHsKIAkJaWYgKGFyZ2MgPCA0KQogCQkJcmV0dXJuIC1FSU5W
QUw7CmRpZmYgLS1naXQgYS9ibG9ja2QuYyBiL2Jsb2NrZC5jCmluZGV4IDZlNTNhMTMuLjJmYzFi
YjYgMTAwNjQ0Ci0tLSBhL2Jsb2NrZC5jCisrKyBiL2Jsb2NrZC5jCkBAIC0yNSw2ICsyNSwxMSBA
QAogI2RlZmluZSBBVVRPRlNfVElNRU9VVAkJMzAKICNkZWZpbmUgQVVUT0ZTX0VYUElSRV9USU1F
UgkoNSAqIDEwMDApCiAKK3N0cnVjdCBob3RwbHVnX2NvbnRleHQgeworCXN0cnVjdCB1bG9vcF9w
cm9jZXNzIHByb2Nlc3M7CisJc3RydWN0IGRldmljZSAqZGV2aWNlOworfTsKKwogc3RydWN0IGRl
dmljZSB7CiAJc3RydWN0IHZsaXN0X25vZGUgbm9kZTsKIAlzdHJ1Y3QgYmxvYl9hdHRyICptc2c7
CkBAIC0xMDgsMTUgKzExMyw0OSBAQCBibG9jayhjaGFyICpjbWQsIGNoYXIgKmFjdGlvbiwgY2hh
ciAqZGV2aWNlKQogCXJldHVybiByZXQ7CiB9CiAKLXN0YXRpYyB2b2lkCi1kZXZpY2VfZnJlZShz
dHJ1Y3QgZGV2aWNlICpkZXZpY2UpCitzdGF0aWMgdm9pZCBob3RwbHVnX2NhbGxfbW91bnQoY29u
c3QgY2hhciAqYWN0aW9uLCBzdHJ1Y3QgZGV2aWNlICpkZXZpY2UsCisJCQkgICAgICAgdWxvb3Bf
cHJvY2Vzc19oYW5kbGVyIGNiKQogewotCWNoYXIgKm1wOworCWNoYXIgKiBjb25zdCBhcmd2W10g
PSB7ICJob3RwbHVnLWNhbGwiLCAibW91bnQiLCBOVUxMIH07CisJc3RydWN0IGhvdHBsdWdfY29u
dGV4dCAqYyA9IE5VTEw7CisJcGlkX3QgcGlkOwogCi0JaWYgKCFkZXZpY2UtPmF1dG9mcykKLQkJ
cmV0dXJuOworCWlmIChjYikgeworCQljID0gY2FsbG9jKDEsIHNpemVvZigqYykpOworCQlpZiAo
IWMpCisJCQlyZXR1cm47CisJfQorCisJcGlkID0gZm9yaygpOworCXN3aXRjaCAocGlkKSB7CisJ
Y2FzZSAtMToKKwkJVUxPR19FUlIoImZvcmsoKSBmYWlsZWRcbiIpOworCQlicmVhazsKKwljYXNl
IDA6CisJCXVsb29wX2VuZCgpOworCisJCXNldGVudigiQUNUSU9OIiwgYWN0aW9uLCAxKTsKKwkJ
c2V0ZW52KCJERVZJQ0UiLCBkZXZpY2UtPm5hbWUsIDEpOworCisJCWV4ZWN2KCIvc2Jpbi9ob3Rw
bHVnLWNhbGwiLCBhcmd2KTsKKwkJZXhpdCgtMSk7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCWlm
IChjKSB7CisJCQljLT5wcm9jZXNzLnBpZCA9IHBpZDsKKwkJCWMtPnByb2Nlc3MuY2IgPSBjYjsK
KwkJCWMtPmRldmljZSA9IGRldmljZTsKKwkJCXVsb29wX3Byb2Nlc3NfYWRkKCZjLT5wcm9jZXNz
KTsKKwkJfQorCQlicmVhazsKKwl9Cit9CiAKLQlibG9jaygiYXV0b2ZzIiwgInVuYXZhaWxhYmxl
IiwgZGV2aWNlLT5uYW1lKTsKK3N0YXRpYyB2b2lkIGRldmljZV9tb3VudF9yZW1vdmVfaG90cGx1
Z19jYihzdHJ1Y3QgdWxvb3BfcHJvY2VzcyAqcCwgaW50IHN0YXQpCit7CisJc3RydWN0IGhvdHBs
dWdfY29udGV4dCAqYyA9IGNvbnRhaW5lcl9vZihwLCBzdHJ1Y3QgaG90cGx1Z19jb250ZXh0LCBw
cm9jZXNzKTsKKwlzdHJ1Y3QgZGV2aWNlICpkZXZpY2UgPSBjLT5kZXZpY2U7CisJY2hhciAqbXA7
CiAKIAlpZiAoZGV2aWNlLT50YXJnZXQpCiAJCXVubGluayhkZXZpY2UtPnRhcmdldCk7CkBAIC0x
MjYsMTcgKzE2NSwyMSBAQCBkZXZpY2VfZnJlZShzdHJ1Y3QgZGV2aWNlICpkZXZpY2UpCiAJCWJs
b2NrKCJhdXRvZnMiLCAicmVtb3ZlIiwgZGV2aWNlLT5uYW1lKTsKIAkJZnJlZShtcCk7CiAJfQor
CisJZnJlZShkZXZpY2UpOworCWZyZWUoYyk7CiB9CiAKLXN0YXRpYyB2b2lkCi1kZXZpY2VfYWRk
KHN0cnVjdCBkZXZpY2UgKmRldmljZSkKK3N0YXRpYyB2b2lkIGRldmljZV9tb3VudF9yZW1vdmUo
c3RydWN0IGRldmljZSAqZGV2aWNlKQoreworCWhvdHBsdWdfY2FsbF9tb3VudCgicmVtb3ZlIiwg
ZGV2aWNlLCBkZXZpY2VfbW91bnRfcmVtb3ZlX2hvdHBsdWdfY2IpOworfQorCitzdGF0aWMgdm9p
ZCBkZXZpY2VfbW91bnRfYWRkKHN0cnVjdCBkZXZpY2UgKmRldmljZSkKIHsKIAlzdHJ1Y3Qgc3Rh
dCBzdDsKIAljaGFyIHBhdGhbNjRdOwogCi0JaWYgKCFkZXZpY2UtPmF1dG9mcykKLQkJcmV0dXJu
OwotCiAJc25wcmludGYocGF0aCwgc2l6ZW9mKHBhdGgpLCAiL3RtcC9ydW4vYmxvY2tkLyVzIiwg
ZGV2aWNlLT5uYW1lKTsKIAlpZiAoIWxzdGF0KGRldmljZS0+dGFyZ2V0LCAmc3QpKSB7CiAJCWlm
IChTX0lTTE5LKHN0LnN0X21vZGUpKQpAQCAtMTQ3LDcgKzE5MCw3IEBAIGRldmljZV9hZGQoc3Ry
dWN0IGRldmljZSAqZGV2aWNlKQogCWlmIChzeW1saW5rKHBhdGgsIGRldmljZS0+dGFyZ2V0KSkK
IAkJVUxPR19FUlIoImZhaWxlZCB0byBzeW1saW5rICVzLT4lcyAoJWQpIC0gJW1cbiIsIGRldmlj
ZS0+dGFyZ2V0LCBwYXRoLCBlcnJubyk7CiAJZWxzZQotCQlibG9jaygiYXV0b2ZzIiwgImF2YWls
YWJsZSIsIGRldmljZS0+bmFtZSk7CisJCWhvdHBsdWdfY2FsbF9tb3VudCgiYWRkIiwgZGV2aWNl
LCBOVUxMKTsKIH0KIAogc3RhdGljIGludApAQCAtMTc3LDM2ICsyMjAsMTMgQEAgZGV2aWNlX21v
dmUoc3RydWN0IGRldmljZSAqZGV2aWNlX28sIHN0cnVjdCBkZXZpY2UgKmRldmljZV9uKQogCXJl
dHVybiAwOwogfQogCi1zdGF0aWMgdm9pZAotZGV2aWNlc191cGRhdGVfY2Ioc3RydWN0IHZsaXN0
X3RyZWUgKnRyZWUsIHN0cnVjdCB2bGlzdF9ub2RlICpub2RlX25ldywKLQkJICBzdHJ1Y3Qgdmxp
c3Rfbm9kZSAqbm9kZV9vbGQpCitzdGF0aWMgdm9pZCB2bGlzdF9ub3BfdXBkYXRlKHN0cnVjdCB2
bGlzdF90cmVlICp0cmVlLAorCQkJICAgICBzdHJ1Y3Qgdmxpc3Rfbm9kZSAqbm9kZV9uZXcsCisJ
CQkgICAgIHN0cnVjdCB2bGlzdF9ub2RlICpub2RlX29sZCkKIHsKLQlzdHJ1Y3QgZGV2aWNlICpk
ZXZpY2VfbyA9IE5VTEwsICpkZXZpY2VfbiA9IE5VTEw7Ci0KLQlpZiAobm9kZV9vbGQpCi0JCWRl
dmljZV9vID0gY29udGFpbmVyX29mKG5vZGVfb2xkLCBzdHJ1Y3QgZGV2aWNlLCBub2RlKTsKLQot
CWlmIChub2RlX25ldykKLQkJZGV2aWNlX24gPSBjb250YWluZXJfb2Yobm9kZV9uZXcsIHN0cnVj
dCBkZXZpY2UsIG5vZGUpOwotCi0JaWYgKGRldmljZV9vICYmIGRldmljZV9uKSB7Ci0JCWlmIChk
ZXZpY2VfbW92ZShkZXZpY2VfbywgZGV2aWNlX24pKSB7Ci0JCQlkZXZpY2VfZnJlZShkZXZpY2Vf
byk7Ci0JCQlkZXZpY2VfYWRkKGRldmljZV9uKTsKLQkJCWlmICghZGV2aWNlX24tPmF1dG9mcykK
LQkJCQlibG9jaygibW91bnQiLCBOVUxMLCBOVUxMKTsKLQkJfQotCX0gZWxzZSBpZiAoZGV2aWNl
X24pIHsKLQkJZGV2aWNlX2FkZChkZXZpY2Vfbik7Ci0JfSBlbHNlIHsKLQkJZGV2aWNlX2ZyZWUo
ZGV2aWNlX28pOwotCX0KLQotCWlmIChkZXZpY2VfbykKLQkJZnJlZShkZXZpY2Vfbyk7CiB9CiAK
LVZMSVNUX1RSRUUoZGV2aWNlcywgYXZsX3N0cmNtcCwgZGV2aWNlc191cGRhdGVfY2IsIGZhbHNl
LCBmYWxzZSk7CitWTElTVF9UUkVFKGRldmljZXMsIGF2bF9zdHJjbXAsIHZsaXN0X25vcF91cGRh
dGUsIGZhbHNlLCBmYWxzZSk7CiAKIHN0YXRpYyBpbnQKIGJsb2NrX2hvdHBsdWcoc3RydWN0IHVi
dXNfY29udGV4dCAqY3R4LCBzdHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKQEAgLTI0NiwyMiArMjY2
LDM1IEBAIGJsb2NrX2hvdHBsdWcoc3RydWN0IHVidXNfY29udGV4dCAqY3R4LCBzdHJ1Y3QgdWJ1
c19vYmplY3QgKm9iaiwKIAogCWlmIChkYXRhW01PVU5UX1JFTU9WRV0pIHsKIAkJdmxpc3RfZGVs
ZXRlKCZkZXZpY2VzLCAmZGV2aWNlLT5ub2RlKTsKLQl9IGVsc2UgewotCQlpZiAoZGF0YVtNT1VO
VF9BVVRPRlNdKQotCQkJZGV2aWNlLT5hdXRvZnMgPSBibG9ibXNnX2dldF91MzIoZGF0YVtNT1VO
VF9BVVRPRlNdKTsKLQkJZWxzZQotCQkJZGV2aWNlLT5hdXRvZnMgPSAwOwotCQlpZiAoZGF0YVtN
T1VOVF9BTk9OXSkKLQkJCWRldmljZS0+YW5vbiA9IGJsb2Jtc2dfZ2V0X3UzMihkYXRhW01PVU5U
X0FOT05dKTsKKworCQlpZiAoZGV2aWNlLT5hdXRvZnMpCisJCQlkZXZpY2VfbW91bnRfcmVtb3Zl
KGRldmljZSk7CiAJCWVsc2UKLQkJCWRldmljZS0+YW5vbiA9IDA7CisJCQlmcmVlKGRldmljZSk7
CisJfSBlbHNlIHsKKwkJc3RydWN0IGRldmljZSAqb2xkID0gdmxpc3RfZmluZCgmZGV2aWNlcywg
ZGV2bmFtZSwgZGV2aWNlLCBub2RlKTsKKworCQlkZXZpY2UtPmF1dG9mcyA9IGRhdGFbTU9VTlRf
QVVUT0ZTXSA/IGJsb2Jtc2dfZ2V0X3UzMihkYXRhW01PVU5UX0FVVE9GU10pIDogMDsKKwkJZGV2
aWNlLT5hbm9uID0gZGF0YVtNT1VOVF9BTk9OXSA/IGJsb2Jtc2dfZ2V0X3UzMihkYXRhW01PVU5U
X0FOT05dKSA6IDA7CiAJCWRldmljZS0+bXNnID0gX21zZzsKIAkJbWVtY3B5KF9tc2csIG1zZywg
YmxvYl9yYXdfbGVuKG1zZykpOwogCQlkZXZpY2UtPm5hbWUgPSBfbmFtZTsKIAkJc3RyY3B5KF9u
YW1lLCBkZXZuYW1lKTsKIAkJZGV2aWNlLT50YXJnZXQgPSBfX3RhcmdldDsKIAkJc3RyY3B5KF9f
dGFyZ2V0LCB0YXJnZXQpOworCiAJCXZsaXN0X2FkZCgmZGV2aWNlcywgJmRldmljZS0+bm9kZSwg
ZGV2aWNlLT5uYW1lKTsKKworCQlpZiAob2xkICYmICFkZXZpY2VfbW92ZShvbGQsIGRldmljZSkp
IHsKKwkJCWlmIChkZXZpY2UtPmF1dG9mcykgeworCQkJCWRldmljZV9tb3VudF9yZW1vdmUob2xk
KTsKKwkJCQlkZXZpY2VfbW91bnRfYWRkKGRldmljZSk7CisJCQl9IGVsc2UgeworCQkJCWJsb2Nr
KCJtb3VudCIsIE5VTEwsIE5VTEwpOworCQkJfQorCQl9IGVsc2UgaWYgKGRldmljZS0+YXV0b2Zz
KSB7CisJCQlkZXZpY2VfbW91bnRfYWRkKGRldmljZSk7CisJCX0KIAl9CiAKIAlyZXR1cm4gMDsK
LS0gCjIuMjYuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
