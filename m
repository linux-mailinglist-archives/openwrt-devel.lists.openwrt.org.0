Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FB2141902
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 19:46:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZGgATZA9ZSKRVa4NspIgUYpMYgJgehzp62LnaU29OcI=; b=k7eMNqrVJiZlYw
	Y5OhWxF0okId4im8FXi07O1IF42oms5WOOVZfQp3gIAzGEYEALPZq/L0Do2jKBH3DEJ2Z15eJ/ygG
	Z3+eL8imnyYE6kj8uTZH06Fep3tOPiuWYYWkJI8fk6jBZgBofs8jWPrMZQ9or264lLXJjqMyOcGdx
	E6Md+ScRH4Vk3rM55plgmCaKUWzXruxhqBAv3mPE+MHQmtsItwwaovQMc/LOvyGoXRL++SMPgg2FF
	/vuGYHjenRO8wC3IVQ2T7bXNlnmX7WbI/h20lH5QOp9WwL+1uwHA7MWIL4B5F8917JAJTJnMmo9mQ
	1XAcOyXXud7zEtPcy/RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ist6q-0000s4-Gw; Sat, 18 Jan 2020 18:46:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ist6i-0000rg-HQ
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 18:46:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so10527133wmb.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 Jan 2020 10:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oNqrtm+tIk2/jzyamY7L+/cCfTmFfEAJcxu7eBh094A=;
 b=V4qb1Ga+lVKyrCEpFbI8kVGq2w1ruDoBzc1UAVMOd9C4t/1bKpA3pNCtunaxhUPRvc
 F0i/xztV/HzzuuN1rDnx72GGcZph6wlg8znd8r9nWOLF1UuBMTJelvj3TNzC+b505Svi
 RFqCDg7rwy/hv99Hr2rxIijEyrTqt+8JP+4H0PezukLbKzFLnEBHqmihEDE9rO7HcY6v
 x1QEi/KyT3b6wiJqDvkwuUfG1P1ZE0th3bSY9Q94FtC4ZBvzdYgXk4x6Cgk4Kr0xMV5P
 EipsLI4Qf7G7/NdzySH1n7pzWVZvY28ZRh7S53q2ika9xCpbJ3MCHcPqWxz8gPrD97qg
 d/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oNqrtm+tIk2/jzyamY7L+/cCfTmFfEAJcxu7eBh094A=;
 b=InsG01G0Db5JVkKoXhINFvCAHXMmDtc79acMiW4z6Ijz2ylTzz2BtySe2KnK3xk+Nv
 AZBhHLYpfSGXfiQ1cRcdrcheHRJyA5xDeyp5ZQjBQFdUh5ua62FQXfylIlmV+izhWi1v
 yy5OJZ+uH6+ItDNuyX09XIoGnIHtQ4/tuLNW+x/2QPT8PX0Ghld5/YgYmv9tnk20vwft
 uZfvOejdWJVY2hoJ+b1ticNtJS1Mq1q5IHeyN05+Y0Mv7ZNopNuDAjUjWAnwwdxBYJCs
 qGtAwOJ8bPSR8vZvsoGUjI52mqubeWKV2DHgCxw2n18kM8N0zcWS6jXGJ8JoCbYGJ+4x
 UzpA==
X-Gm-Message-State: APjAAAWjrkphBjZ11iMlBjzsCHRBnWxZwKUV6QqTP/1F+r4lES6VbfvY
 g4nF7Y/DnOYaW3revLGVL1hEQz10Yw==
X-Google-Smtp-Source: APXvYqykOxo1gh9ZMU9WCgU0VsAV8dXVJfuPErvM7sDMl5ALYFJGh8Qsjcd8hPQkKzsNyqZj6I0wZA==
X-Received: by 2002:a1c:964f:: with SMTP id y76mr10572372wmd.62.1579373158939; 
 Sat, 18 Jan 2020 10:45:58 -0800 (PST)
Received: from localhost.localdomain (a109-49-10-77.cpe.netcabo.pt.
 [109.49.10.77])
 by smtp.gmail.com with ESMTPSA id z124sm16866260wmc.20.2020.01.18.10.45.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 10:45:57 -0800 (PST)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Jan 2020 18:44:47 +0000
Message-Id: <20200118184447.22048-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_104604_601988_9F2AA83A 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rsalvaterra[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] fw3: robustify flow table detection.
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
Cc: ynezz@true.cz, jo@mein.io, Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

djI6IGFkZHJlc3NlZCBQZXRyIMWgdGV0aWFyJ3MgY29uY2VybnMgYW5kIGFsc28gY2hhbmdlZCB0
aGUgZ2VuZXJpYyBoZWxwZXIKdG8gY2hlY2sgZm9yIHRoZSBhdmFpbGFiaWxpdHkgb2YgSVB2NCBv
ciBJUHY2IHRhcmdldHMsIGFzIG5lZWRlZC4KClRoZSBmbG93dGFibGUgZGV0ZWN0aW9uIGZhaWxz
IGlmIHRoZSByZXNwZWN0aXZlIHRhcmdldCBtb2R1bGUgaXMgYnVpbHQtaW4sCnNpbmNlIGl0J3Mg
bG9va2luZyBmb3IgdGhlIG1vZHVsZSBpdHNlbGYuIENyZWF0ZSBhIGdlbmVyaWMgaGVscGVyIGFu
ZAppbnN0ZWFkIGNoZWNrIGZvciBleGlzdGVuY2Ugb2YgdGhlIEZMT1dPRkZMT0FEIHRhcmdldCBp
bgovcHJvYy9uZXQvaXBfdGFibGVzX3RhcmdldHMuCgpTaWduZWQtb2ZmLWJ5OiBSdWkgU2FsdmF0
ZXJyYSA8cnNhbHZhdGVycmFAZ21haWwuY29tPgotLS0KIGRlZmF1bHRzLmMgfCAyNSArKysrKysr
LS0tLS0tLS0tLS0tLS0tLS0tCiB1dGlscy5jICAgIHwgMjcgKysrKysrKysrKysrKysrKysrKysr
KysrKysrCiB1dGlscy5oICAgIHwgIDYgKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDQwIGluc2Vy
dGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RlZmF1bHRzLmMgYi9kZWZh
dWx0cy5jCmluZGV4IGYwMzc2NWMuLmM3OGFiNTEgMTAwNjQ0Ci0tLSBhL2RlZmF1bHRzLmMKKysr
IGIvZGVmYXVsdHMuYwpAQCAtODUsMjYgKzg1LDE0IEBAIGNoZWNrX3BvbGljeShzdHJ1Y3QgdWNp
X2VsZW1lbnQgKmUsIGVudW0gZnczX2ZsYWcgKnBvbCwgY29uc3QgY2hhciAqbmFtZSkKIH0KIAog
c3RhdGljIHZvaWQKLWNoZWNrX2ttb2Qoc3RydWN0IHVjaV9lbGVtZW50ICplLCBib29sICptb2R1
bGUsIGNvbnN0IGNoYXIgKm5hbWUpCitjaGVja190YXJnZXQoc3RydWN0IHVjaV9lbGVtZW50ICpl
LCBib29sICphdmFpbGFibGUsIGNvbnN0IGNoYXIgKnRhcmdldCwgY29uc3QgYm9vbCBpcHY2KQog
ewotCUZJTEUgKmY7Ci0JY2hhciBidWZbMTI4XTsKLQotCWlmICghKm1vZHVsZSkKLQkJcmV0dXJu
OwotCi0Jc25wcmludGYoYnVmLCBzaXplb2YoYnVmKSwgIi9zeXMvbW9kdWxlLyVzL3JlZmNudCIs
IG5hbWUpOwotCi0JZiA9IGZvcGVuKGJ1ZiwgInIiKTsKLQotCWlmIChmKQorCWNvbnN0IGJvb2wg
YiA9IGZ3M19oYXNfdGFyZ2V0KGlwdjYsIHRhcmdldCk7CisJaWYgKCFiKQogCXsKLQkJZmNsb3Nl
KGYpOwotCQlyZXR1cm47CisJCXdhcm5fZWxlbShlLCAicmVxdWlyZXMgdW5hdmFpbGFibGUgdGFy
Z2V0IGV4dGVuc2lvbiAlcywgZGlzYWJsaW5nIiwgdGFyZ2V0KTsKIAl9Ci0KLQl3YXJuX2VsZW0o
ZSwgInJlcXVpcmVzIG5vdCBhdmFpbGFibGUga2VybmVsIG1vZHVsZSAlcywgZGlzYWJsaW5nIiwg
bmFtZSk7Ci0JKm1vZHVsZSA9IGZhbHNlOworCSphdmFpbGFibGUgPSBiOwogfQogCiBzdGF0aWMg
dm9pZApAQCAtMTcxLDcgKzE1OSw4IEBAIGZ3M19sb2FkX2RlZmF1bHRzKHN0cnVjdCBmdzNfc3Rh
dGUgKnN0YXRlLCBzdHJ1Y3QgdWNpX3BhY2thZ2UgKnApCiAKIAkJY2hlY2tfYW55X3JlamVjdF9j
b2RlKGUsICZkZWZzLT5hbnlfcmVqZWN0X2NvZGUpOwogCi0JCWNoZWNrX2ttb2QoZSwgJmRlZnMt
PmZsb3dfb2ZmbG9hZGluZywgInh0X0ZMT1dPRkZMT0FEIik7CisJCS8qIGV4aXN0cyBpbiBib3Ro
IGlwdjQgYW5kIGlwdjYsIGlmIGF0IGFsbCwgc28gb25seSBjaGVjayBpcHY0ICovCisJCWNoZWNr
X3RhcmdldChlLCAmZGVmcy0+Zmxvd19vZmZsb2FkaW5nLCAiRkxPV09GRkxPQUQiLCBmYWxzZSk7
CiAJfQogfQogCmRpZmYgLS1naXQgYS91dGlscy5jIGIvdXRpbHMuYwppbmRleCA0NDFkYmQyLi5m
NjhhNjBhIDEwMDY0NAotLS0gYS91dGlscy5jCisrKyBiL3V0aWxzLmMKQEAgLTM0NCw2ICszNDQs
MzMgQEAgZnczX2hhc190YWJsZShib29sIGlwdjYsIGNvbnN0IGNoYXIgKnRhYmxlKQogCXJldHVy
biBzZWVuOwogfQogCitib29sCitmdzNfaGFzX3RhcmdldChjb25zdCBib29sIGlwdjYsIGNvbnN0
IGNoYXIgKnRhcmdldCkKK3sKKwlGSUxFICpmOworCisJY2hhciBsaW5lWzEyXTsKKwlib29sIHNl
ZW4gPSBmYWxzZTsKKworCWNvbnN0IGNoYXIgKnBhdGggPSBpcHY2CisJCT8gIi9wcm9jL25ldC9p
cDZfdGFibGVzX3RhcmdldHMiIDogIi9wcm9jL25ldC9pcF90YWJsZXNfdGFyZ2V0cyI7CisKKwlp
ZiAoIShmID0gZm9wZW4ocGF0aCwgInIiKSkpCisJCXJldHVybiBmYWxzZTsKKworCXdoaWxlIChm
Z2V0cyhsaW5lLCBzaXplb2YobGluZSksIGYpKQorCXsKKwkJaWYgKCFzdHJuY21wKGxpbmUsIHRh
cmdldCwgTUlOKHNpemVvZihsaW5lKSwgc3RybGVuKHRhcmdldCkpKSkKKwkJeworCQkJc2VlbiA9
IHRydWU7CisJCQlicmVhazsKKwkJfQorCX0KKworCWZjbG9zZShmKTsKKworCXJldHVybiBzZWVu
OworfQogCiBib29sCiBmdzNfbG9ja19wYXRoKGludCAqZmQsIGNvbnN0IGNoYXIgKnBhdGgpCmRp
ZmYgLS1naXQgYS91dGlscy5oIGIvdXRpbHMuaAppbmRleCBjOGNmNjlhLi41NThiYjRmIDEwMDY0
NAotLS0gYS91dGlscy5oCisrKyBiL3V0aWxzLmgKQEAgLTg5LDYgKzg5LDEwIEBAIHZvaWQgaW5m
byhjb25zdCBjaGFyICpmb3JtYXQsIC4uLikKICAgICAoIShmbGFncyAmICgoMTw8RlczX1RBQkxF
X0ZJTFRFUil8KDE8PEZXM19UQUJMRV9OQVQpfCAgICAgICAgICAgICAgICAgIFwKICAgICAgICAg
ICAgICAgICAoMTw8RlczX1RBQkxFX01BTkdMRSl8KDE8PEZXM19UQUJMRV9SQVcpKSkpCiAKKyNk
ZWZpbmUgTUlOKGEsYikJCQkJXAorCSh7IF9fdHlwZW9mX18gKGEpIF9hID0gKGEpOwkJXAorCQlf
X3R5cGVvZl9fIChiKSBfYiA9IChiKTsJXAorCQlfYSA8IF9iID8gX2EgOiBfYjsgfSkKIAogdm9p
ZCAqIGZ3M19hbGxvYyhzaXplX3Qgc2l6ZSk7CiBjaGFyICogZnczX3N0cmR1cChjb25zdCBjaGFy
ICpzKTsKQEAgLTEwNSw2ICsxMDksOCBAQCB2b2lkIGZ3M19wcihjb25zdCBjaGFyICpmbXQsIC4u
LikKIAogYm9vbCBmdzNfaGFzX3RhYmxlKGJvb2wgaXB2NiwgY29uc3QgY2hhciAqdGFibGUpOwog
Citib29sIGZ3M19oYXNfdGFyZ2V0KGNvbnN0IGJvb2wgaXB2NiwgY29uc3QgY2hhciAqdGFyZ2V0
KTsKKwogYm9vbCBmdzNfbG9jayh2b2lkKTsKIHZvaWQgZnczX3VubG9jayh2b2lkKTsKIGJvb2wg
ZnczX2xvY2tfcGF0aChpbnQgKmZ3M19sb2NrX2ZkLCBjb25zdCBjaGFyICpwYXRoKTsKLS0gCjIu
MjUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
