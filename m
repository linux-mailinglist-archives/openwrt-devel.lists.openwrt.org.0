Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BB519C6D7
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 18:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FUlFC9MpxKVJ9CPyygX5XPUY0wb4gFL1O25bd5CQyD8=; b=NhmxyxHMnpjEqU
	hkj+rlDYHivcYXY/2pGMZnXd3cw4w04GgJRfDAT5M+7jC6GKxRXQds85aPQSLmwy5tzkJ4BvblBi+
	1rK9T4V9kTOWI/Y9hlOXWLKfDLsALZI8c+js8j0rDNh3KK4V1idVKA6WrsR7mke5AmzKkNlHx6FfL
	A3jykCx6Jr/GrzyBaNHIcXOlv9yG3fVoJgfZA5VQfKJF6jZozAmhOumxMjAzuETVp5P/gjZULl+rc
	DjHSjx117OeFKOMUes7TUm/09hXIE+JynAwbapax9adTEmYnlBD3w+yXPz3MBMfRkcUXppBB/XSA1
	BS3zLNOheRAObOtYJzIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2VM-0001hq-Bw; Thu, 02 Apr 2020 16:15:44 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2VC-0001hP-0f
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 16:15:35 +0000
Received: by mail-lf1-x141.google.com with SMTP id t11so3227647lfe.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 Apr 2020 09:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JQz0JyYTk/4wkdh3UGguxOkbzBWMlM0WQTLU9QcN2Rc=;
 b=tq7xyEtLy4MVaysEbwqRakRsveIDzoEvT0hmlpkbHgow9NCW/ream5OM3JbhDd2iv4
 elkjROyczYKI9A2YDh0pySKY21dPITEbQ0bpQUtChIkDs2MwLEQ/QIGhIhvshqD41kCu
 6CUDBdQpQn7A+0APZ4ZY9Ko4qZZGzFsKTlezhmX3GMXV5pzHY+qsoF3E0ZoBkCvdm3sZ
 bksxARz/8PZSNl+4Bhm+UfauTOKsy9mD96Gw1bLTd39qMpZRKW1/w0nZ4BtAw4cLSpfm
 cDgv+LQWNTlJMDhS69c+vMjIFYd7/kSbw9nPMDfZ6IfGKDfIkPbV1u4j4IjCJte9/RKs
 Hq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JQz0JyYTk/4wkdh3UGguxOkbzBWMlM0WQTLU9QcN2Rc=;
 b=XDuXQi1ozs/b9pBeBtoOevW+6JV8CizdcHXrn9a2Tm8euc6xTbsfN5G0Vn7NMoTcyX
 p39tou4zYCSQSGw0o4Uzh91AYG8oPprzvAxPRjqmoRd61JbVZxNpppr9cEe5GbpEbOZG
 +RVylHVPG3CspDdkV2M9fTY+v2ryVpPJvHOKfHxSRteaSPT2627Rogew27ojIdA6KyG9
 /RVvY0j4NCGg6MClJJQdFudbn9GlP56dNEL1LqD8M2KDoJbs44y9OMNs7tHh9V5o/OjZ
 K6HLgA/RdYeEBVfhfIsU2qsemHO2OwN9TUYglIaQK/5Otp/bazdyJybXJjYNJP/6KcQG
 cjPw==
X-Gm-Message-State: AGi0PuYhRjzVUf6G6uz0TJvQ6RE3V2nAmukMMsh3AayUJEmHzLmHEoSZ
 Cn9YYAouZlGQNpYHSEFkpp+EcLoV
X-Google-Smtp-Source: APiQypJ4j9EqgeKH2OERhpFHRQ867sRTivuShIAFmC1jQKn1SOvLPv5d6CBkPNldmJLkRxiUcgkMxQ==
X-Received: by 2002:ac2:5f63:: with SMTP id c3mr2347807lfc.15.1585844127687;
 Thu, 02 Apr 2020 09:15:27 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id m8sm3484216lji.12.2020.04.02.09.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 09:15:26 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  2 Apr 2020 18:15:13 +0200
Message-Id: <20200402161513.19036-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_091534_062486_53991166 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH fstools WIP] block: check for parent mount
 point before mounting
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
 Yousong Zhou <yszhou4tech@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKU29tZSBkZXZpY2VzIG1h
eSBoYXZlIG1vdW50IHRhcmdldCBzZXQgdG8gZGlyZWN0b3J5IHVzZWQgYnkgYW5vdGhlcgpkZXZp
Y2UuIERldGVjdCBpdCBhbmQgcHJpbnQgYSB3YXJuaW5nLgoKSW4gZnV0dXJlIHdlIHNob3VsZCBt
b3VudCBzdWNoICJwYXJlbnQiIGRldmljZXMgZmlyc3QuCgpDYzogWW91c29uZyBaaG91IDx5c3po
b3U0dGVjaEBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxA
bWlsZWNraS5wbD4KLS0tCiBibG9jay5jIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2Jsb2NrLmMgYi9ibG9jay5jCmluZGV4IGRmZWU3ZmIuLjdjZDE5NDQgMTAwNjQ0Ci0tLSBhL2Js
b2NrLmMKKysrIGIvYmxvY2suYwpAQCAtMTAyOSw2ICsxMDI5LDM0IEBAIHN0YXRpYyBpbnQgYmxv
Y2tkX25vdGlmeShjaGFyICpkZXZpY2UsIHN0cnVjdCBtb3VudCAqbSwgc3RydWN0IHByb2JlX2lu
Zm8gKnByKQogCXJldHVybiBlcnI7CiB9CiAKKy8qKgorICogZmluZF9wYXJlbnRfZGV2aWNlIC0g
ZmluZCAicGFyZW50IiBkZXZpY2UgZm9yIGEgZ2l2ZW4gdGFyZ2V0IHBhdGgKKyAqCisgKiBTb21l
IGRldmljZXMgbWF5IGhhdmUgdGFyZ2V0IHBhdGggc2V0IHRvIGRpcmVjdG9yeSB0aGF0IGlzIHVz
ZWQgYXMgYW5vdGhlcgorICogZGV2aWNlIG1vdW50IHBvaW50LiBUaGlzIGZ1bmN0aW9uIGFsbG93
cyBmaW5kaW5nIHN1Y2ggZGV2aWNlcyBzbyB0aGV5IGNhbiBiZQorICogbW91bnRlZCBmaXJzdC4K
KyAqLworc3RhdGljIHN0cnVjdCBwcm9iZV9pbmZvICpmaW5kX3BhcmVudF9kZXZpY2Uoc3RydWN0
IHByb2JlX2luZm8gKnByLCBjb25zdCBjaGFyICp0YXJnZXQpCit7CisJc3RydWN0IHByb2JlX2lu
Zm8gKmU7CisKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGUsICZkZXZpY2VzLCBsaXN0KSB7CisJCXN0
cnVjdCBtb3VudCAqbXA7CisKKwkJaWYgKGUgPT0gcHIpCisJCQljb250aW51ZTsKKworCQltcCA9
IGZpbmRfYmxvY2soZS0+dXVpZCwgZS0+bGFiZWwsIGJhc2VuYW1lKGUtPmRldiksIE5VTEwpOwor
CQlpZiAobXAgJiYgbXAtPnRhcmdldCkgeworCQkJaWYgKHN0cmxlbihtcC0+dGFyZ2V0KSA8IHN0
cmxlbih0YXJnZXQpICYmCisJCQkgICAgIXN0cm5jbXAobXAtPnRhcmdldCwgdGFyZ2V0LCBzdHJs
ZW4obXAtPnRhcmdldCkpKQorCQkJCXJldHVybiBlOworCQl9CisJfQorCisJcmV0dXJuIE5VTEw7
Cit9CisKIHN0YXRpYyBpbnQgbW91bnRfZGV2aWNlKHN0cnVjdCBwcm9iZV9pbmZvICpwciwgaW50
IHR5cGUpCiB7CiAJc3RydWN0IG1vdW50ICptOwpAQCAtMTA2OSw2ICsxMDk3LDE0IEBAIHN0YXRp
YyBpbnQgbW91bnRfZGV2aWNlKHN0cnVjdCBwcm9iZV9pbmZvICpwciwgaW50IHR5cGUpCiAJCXJl
dHVybiBlcnI7CiAJfQogCisJLyogQ2hlY2sgaWYgdGhlcmUgaXMgZGV2aWNlIGZvciBwYXJlbnQg
ZGlyICovCisJaWYgKG0gJiYgbS0+dGFyZ2V0KSB7CisJCXN0cnVjdCBwcm9iZV9pbmZvICpwYXJl
bnQgPSBmaW5kX3BhcmVudF9kZXZpY2UocHIsIG0tPnRhcmdldCk7CisKKwkJaWYgKHBhcmVudCkK
KwkJCVVMT0dfV0FSTigiRGV2aWNlICVzIHNob3VsZCBiZSBtb3VudGVkIGZpcnN0IVxuIiwgcGFy
ZW50LT5kZXYpOworCX0KKwogCWlmICh0eXBlID09IFRZUEVfSE9UUExVRykKIAkJYmxvY2tkX25v
dGlmeShkZXZpY2UsIG0sIHByKTsKIAotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
