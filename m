Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF8A11E198
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 11:05:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADazrkEXqZ5tnVWugw1K6SYeTtLRM3Yoltj9xQzzGSw=; b=GGcDfmUdXGdYZZ
	JOeb2NPZskGAJnujgPXEmmu4+RpQSwN6ktX2xwXK1568g3iZQdyh1LtWzBp7xOV9qYn5+lC+IZtZ8
	khOaGSc+L09WU32R5ekdsVnES4UQ/6wxCFV+Xn/lAdTAM+szqLEqTQK6Dv0wFEspHXcp8BS1zx/d3
	oxj4hedZxA7IjuCHyTx0D2VXdeNBu2bCd8f+DFYzBmx2w5RAJkwr6YtUu/4PEdCu37cVJSdxO86Wi
	vDU0k99PdXljIFX30OzQZlERpXpBqmFLrqW5BeCAUrOqSs4KHnLksoVM3tras6oYA+HQxidmkw4rO
	gw848WuAvDZjf3SwCNDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhpW-0007Wg-Ex; Fri, 13 Dec 2019 10:05:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhp5-00068k-4q
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 10:05:27 +0000
Received: by mail-lj1-x244.google.com with SMTP id k8so1989653ljh.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Dec 2019 02:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YeljOHa53ycnaQ2xlcGh4eMzlWjKl/ZLhssCiaeq01s=;
 b=MHEgB9L4t0V52lSHxLf3Yq1M//yjKJvezVZH8NJWKrUfE7qnghe2uZf75B/gbx18RJ
 l6esf8bn/52jemOgCIsfwbnPqfQj8J0Q2Dn52Q0QLqNKRcZ3g1558BXDprTKBbn3zE6o
 r5jBxDdM3qOk/TJ/rrz3pBTIGcwApsvPRf03ecQZLKb0tPKrjcOEY/2BDlrvyPAiZgbm
 FVp9V1A8AmvHP4DCPMHjI64cp9du8ZXcAP7xNRA1yOR810P/YrNF9vD0+6Do0jyuaBkU
 ekxNcjY5rrI1N79JnD7DKZanEttFmK244WFLJD7NITLD1LaststgsTD3rsqAQlPQhe8d
 oAlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YeljOHa53ycnaQ2xlcGh4eMzlWjKl/ZLhssCiaeq01s=;
 b=To1d1Fg4OJ1HMVSwu1j13EVT6oudOjc04vsFT8BJBS0D/U+691bmNxZWvUv+kgwNWs
 9qsqon2cRZRSM3k6+nd/UtuTWLFfyJtlLUNg6oBlUR+HK8plAPw9J3XGwkuazfzxC9Ct
 4NjNLtmsQwEZxOdmzIlshatuiHKJpeNrfS844QKawDAOTFa7oAEWBRajSTzxO8a4XQ9q
 HfTTSsPPdyZvJlSpXl6XC+xH3I2Pfymf2URHredx6TK+M4gK3Mb6AC2r8XOXit+eJk5Q
 yXI7qfU0762f2mOlYZVQLTdyhaxMk+RWUYqOVhDVz0N+vK94hIzMCt123L+eaxX71+l+
 rMgA==
X-Gm-Message-State: APjAAAVLTNtjFI0Pjt/cngibD9fmGHH/rb0FKu1hk6qS15B1uqrEP9sO
 vIOLgHvoJp0EpqDfOwO09iLGOdAS
X-Google-Smtp-Source: APXvYqxCb7l2P/MqqghbOZFOX1vOoBbVCF2f/NK4idH6kyq4xppUWfT6mY3eTf+pQxfOPJXP4OPb7Q==
X-Received: by 2002:a2e:9216:: with SMTP id k22mr8989402ljg.52.1576231521455; 
 Fri, 13 Dec 2019 02:05:21 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id w71sm5021438lff.0.2019.12.13.02.05.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Dec 2019 02:05:20 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Dec 2019 11:05:12 +0100
Message-Id: <20191213100512.31373-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191213100512.31373-1-zajec5@gmail.com>
References: <20191213100512.31373-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_020523_302607_A5182017 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH fstools 2/2] blockd: don't flush devices
 list on "hotplug" call
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhlIHBvaW50IG9mICJo
b3RwbHVnIiBjYWxsIGlzIHRvIGFkZCBvciByZW1vdmUgYSBzaW5nbGUgZW50cnkgdG8vZnJvbQpk
ZXZpY2VzIGxpc3QuIFVzaW5nIHZsaXN0X3VwZGF0ZSgpIGFuZCB2bGlzdF9mbHVzaCgpIHdhcyBj
bGVhcmluZyB3aG9sZQpsaXN0IChhbmQgbGVhdmluZyB0aGUgbGFzdCBlbnRyeSBpbiBjYXNlIG9m
IGFkZGluZyBhIGRldmljZXMpLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZh
bEBtaWxlY2tpLnBsPgotLS0KIGJsb2NrZC5jIHwgMiAtLQogMSBmaWxlIGNoYW5nZWQsIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYmxvY2tkLmMgYi9ibG9ja2QuYwppbmRleCA3Mzc1YjJi
Li5lMDc1MzBjIDEwMDY0NAotLS0gYS9ibG9ja2QuYworKysgYi9ibG9ja2QuYwpAQCAtMjM3LDcg
KzIzNyw2IEBAIGJsb2NrX2hvdHBsdWcoc3RydWN0IHVidXNfY29udGV4dCAqY3R4LCBzdHJ1Y3Qg
dWJ1c19vYmplY3QgKm9iaiwKIAlpZiAoIWRldmljZSkKIAkJcmV0dXJuIFVCVVNfU1RBVFVTX1VO
S05PV05fRVJST1I7CiAKLQl2bGlzdF91cGRhdGUoJmRldmljZXMpOwogCWlmIChkYXRhW01PVU5U
X1JFTU9WRV0pIHsKIAkJdmxpc3RfZGVsZXRlKCZkZXZpY2VzLCAmZGV2aWNlLT5ub2RlKTsKIAl9
IGVsc2UgewpAQCAtMjU3LDcgKzI1Niw2IEBAIGJsb2NrX2hvdHBsdWcoc3RydWN0IHVidXNfY29u
dGV4dCAqY3R4LCBzdHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKIAkJc3RyY3B5KF9fdGFyZ2V0LCB0
YXJnZXQpOwogCQl2bGlzdF9hZGQoJmRldmljZXMsICZkZXZpY2UtPm5vZGUsIGRldmljZS0+bmFt
ZSk7CiAJfQotCXZsaXN0X2ZsdXNoKCZkZXZpY2VzKTsKIAogCXJldHVybiAwOwogfQotLSAKMi4y
MS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
