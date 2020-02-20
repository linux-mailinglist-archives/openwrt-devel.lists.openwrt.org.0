Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B52A165DB6
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 13:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+D6RBwitiLgWttRSLK4J9fezC/6rgnwOsLL3ITe7HGg=; b=i5f58rzg6NuQqw
	FQYC6bz95uv/uIFiz/4iLvBa1cYNXe07DHWWDoZprOaFlr5rVnyuIwLQiVo57+SYrFwQTL93pXQKz
	itEo+OhWJ8t6JOJw8WVW2tmjzXJxB0s3IMc9VkaTz2wMQL8MfDzRUUfBCXbelIr53e01FC2lkbPUg
	FlTCh/DpXaWoU6/6zMtNMWFWUioR+R5ziPcG/sGifDdTW578rc5t88sOwb/xgb6ZCMIJfAdbDDTK3
	YEoIb45rUYxk2ooTp9fkDCev6DhZrHKpzYa3rjZS/ELz9JySXxphQ/7q8VC8qvnSghq4qwOUYfhiu
	oBMiFlIAdmCkVKYGoo1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4l90-0007hE-1U; Thu, 20 Feb 2020 12:41:30 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4l8f-0007Uu-0d
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 12:41:11 +0000
Received: by mail-lj1-x22f.google.com with SMTP id o15so4059757ljg.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Feb 2020 04:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SMfW3FFzw8HiSOvGzKGHJHEbiOE2GtMtoiFyC4LIbt4=;
 b=Cguf/l9CwrH7YrOJ1szi7Mi921skpCEl4D98qus3Af6wSenrYOyhuqnnXBXZ2JmcTb
 rin9qgJl8+v1WyN1n54WB7AFCXKaRRzXQG5ChocqiibsAA0dVAvZaGFgKvDYTMrrYPtt
 Cywi1We642Ezud/O4lEA0wvacw0dOXzbUi7ecF6wVxm6ri31dXDvZHUtsE0v9+BiEMYP
 2O8KWCA0mlDqgLGxyNHq6S6vAHthV5WiPsUDXuON6/wpm3zp3zc8jzd2/i3faOkrivRI
 klnStb6kDOB9jeqE3lw91HytE5fan/GGaV6kH/1BhgkuVogcKnUP5S3f0dhU9i26xt3r
 UUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SMfW3FFzw8HiSOvGzKGHJHEbiOE2GtMtoiFyC4LIbt4=;
 b=bxkRnOjlvKfYCUEQboESwURV2tQ67WJ+R/xbc4mLQWU6lwplYvnDp93VZPNTDJYpGz
 D/j3XugaWc0dzASDai1zwWR1MBVQIQT56lujwzqoYJNb+eFxczvQNaZsAp1JN6B3N7wg
 IkiuLpFdY8HaqSgJpqVOFPflFyQuHcZQGmN02z79aEYdCX6+4SIre9gYVCPgZIr0t5R8
 fy3vdjCjZXiGvN2mMR/3WIwmQxNRT1keuISGGvkRVlbK1PiJe9Xb6/k9j0g3cccoGtKH
 BAnRWNVTNuU048yE4/fYrVUG4uVhaWg8XyLtPBrfSWlYdHTjJbAab/ek500TEK+ztFxo
 nXbg==
X-Gm-Message-State: APjAAAWr8VQ4rUKc3F6KhGjHfq7pFe9ERC6dND3MAZfDBqkMA7xNLVb1
 06zJjeQC6oAtTu/94Y9UtZFLTv6O
X-Google-Smtp-Source: APXvYqwJONO7R8rKQHnWF8wBrgzKawJdmtQLgsvZOzuV7SCgqRL8IOurgPcJ7NzIJuFB+fEuOvXkow==
X-Received: by 2002:a2e:9618:: with SMTP id v24mr18729468ljh.181.1582202466725; 
 Thu, 20 Feb 2020 04:41:06 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id b20sm1737707ljp.20.2020.02.20.04.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 04:41:06 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Feb 2020 13:40:55 +0100
Message-Id: <20200220124055.10818-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220124055.10818-1-zajec5@gmail.com>
References: <20200220124055.10818-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_044109_053294_BD3124EE 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] bcm53xx: sysupgrade: optimize building
 UBI image
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVXNlICJ0cnVuY2F0ZSIg
dG8gYWRqdXN0IHNpemUgb2YgZXhpc3RpbmcgZmlsZSBpbnN0ZWFkIG9mICJkZCIgd2hpY2gKcmVx
dWlyZWQgY3JlYXRpbmcgYSBjb3B5LiBUaGlzIHNhdmVzIHNwYWNlIG9uIHRtcGZzLiBJdCBtYXkg
YmUgYXMgbG93CmFzIDIuMSBNaUIgd2hlbiB1c2luZyBPcGVuV3J0IGRlZmF1bHQgdXNlciBzcGFj
ZSBhbmQgd2F5IG1vcmUgKDIwKyBNaUIpCndoZW4gZmxhc2hpbmcgdmVuZG9yIGZpcm13YXJlLgoK
U2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIHRh
cmdldC9saW51eC9iY201M3h4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggfCA2
ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYmNtNTN4eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRl
L3BsYXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L2JjbTUzeHgvYmFzZS1maWxlcy9saWIvdXBncmFk
ZS9wbGF0Zm9ybS5zaAppbmRleCAxNjg2NDYyY2RlLi40MGIyZWY2N2JlIDEwMDY0NAotLS0gYS90
YXJnZXQvbGludXgvYmNtNTN4eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCisr
KyBiL3RhcmdldC9saW51eC9iY201M3h4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0u
c2gKQEAgLTEsNCArMSw0IEBACi1SQU1GU19DT1BZX0JJTj0nb3NhZmVsb2FkZXIgb3NlYW1hIG90
cngnCitSQU1GU19DT1BZX0JJTj0nb3NhZmVsb2FkZXIgb3NlYW1hIG90cnggdHJ1bmNhdGUnCiAK
IFBBUlRfTkFNRT1maXJtd2FyZQogCkBAIC0yODEsNyArMjgxLDcgQEAgcGxhdGZvcm1fZG9fdXBn
cmFkZV9uYW5kX3RyeCgpIHsKIAl3aGlsZSBbICIkKGRkIGlmPSRkaXIvcm9vdCBza2lwPSR1Ymlf
bGVuZ3RoIGJzPTEgY291bnQ9NCAyPi9kZXYvbnVsbCkiID0gIlVCSSMiIF07IGRvCiAJCXViaV9s
ZW5ndGg9JCgoJHViaV9sZW5ndGggKyAxMzEwNzIpKQogCWRvbmUKLQlkZCBpZj0kZGlyL3Jvb3Qg
b2Y9L3RtcC9yb290LnViaSBicz0xMzEwNzIgY291bnQ9JCgodWJpX2xlbmd0aCAvIDEzMTA3Mikp
IDI+L2Rldi9udWxsCisJdHJ1bmNhdGUgLXMgJHViaV9sZW5ndGggJGRpci9yb290CiAJWyAkPyAt
bmUgMCBdICYmIHsKIAkJZWNobyAiRmFpbGVkIHRvIHByZXBhcmUgbmV3IFVCSSBpbWFnZS4iCiAJ
CXJldHVybgpAQCAtMjg5LDcgKzI4OSw3IEBAIHBsYXRmb3JtX2RvX3VwZ3JhZGVfbmFuZF90cngo
KSB7CiAKIAkjIEZsYXNoCiAJbXRkIHdyaXRlIC90bXAva2VybmVsLnRyeCBmaXJtd2FyZSB8fCBl
eGl0IDEKLQluYW5kX2RvX3VwZ3JhZGUgL3RtcC9yb290LnViaQorCW5hbmRfZG9fdXBncmFkZSAk
ZGlyL3Jvb3QKIH0KIAogcGxhdGZvcm1fZG9fdXBncmFkZV9uYW5kX3NlYW1hKCkgewotLSAKMi4y
NS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
