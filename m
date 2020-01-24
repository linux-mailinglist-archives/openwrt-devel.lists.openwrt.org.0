Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A70148B92
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Jan 2020 16:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ryq8GSQ/8RhOitjlpOJonzEKpidTkOtZ1k+EbghjFMo=; b=Tmt/7fZimWUxw6
	ZPhk0z5sFTYHQnsR5n4w0aJggKs8kF6wwmnJcF+u1/T5oIxKqbkENWiw3xbRnsEQilW7FmzwEcUYX
	xNvN753LJqX8LzFuUFBKvrT4hn+Yw3wq9MGcEPk/nBcC5bnzzV13g7T+DnFS0I1BGllWSXBIbr6oU
	Ex9V1+Nvj3fgwoxb54Cndud68BfaGonE2akQKkqULjl6CUOXNNjfbqeuH1Rg1pZ4HDB9YiBX3AsFQ
	riNsngiAe9RFEbreCsD5FqGRmEDE5LUw9ZngJ/yWvgDCpkZU7IvqwxMDe8xjfz71wcpZ2AG461NaH
	YeAvWMIJ7RQo/lx3DdJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1KV-0007A7-3g; Fri, 24 Jan 2020 15:57:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1K5-0006wi-Ip
 for openwrt-devel@lists.openwrt.org; Fri, 24 Jan 2020 15:56:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so2099708wmj.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Jan 2020 07:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DeUp3sFjzAyHMS+K4XQDYSSpx8HsAjxwgPDfvsnM/0I=;
 b=B+8Ue+ZReS5ClGjcXMAd55fZ1EQXsy8uwjkYnZUxHbpcGGpN60X18m9HeCcxd6lKyG
 AC9XTW6kY2Bec0HBIlTeKC4EPGHBfmmhNx7ZePqJOAW/I63mHVfukCFScxaW3A8kMaK+
 jK00DTe9g8x92fRH3BeE5Q4nCBR4zW96x+llU0lGomI0SRRK5lrepMp9N/fkZXIClMJk
 kwh5lGl24GXkWNBz+HwhCgveWiURcWGkFAsCXx9WmYBJItHl+ZmRbw68ixKAkIsAKicA
 B/XRa8GKt1KAXJ/tG/maOQAa/gKx4Af2FHJE6mYlsLt5/jTdfKY5GUaEOdhNQ63mdHFF
 O32A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DeUp3sFjzAyHMS+K4XQDYSSpx8HsAjxwgPDfvsnM/0I=;
 b=JZ3W7Wjek86Ns9zQcV1AddGKuPP9oOZKn4XVNcYTcaS33OEpxUpOir/ic3UEJgpnSr
 6iMbBMmlkBMZLmwoGJMel3g67eF6vS48OtsbSmMUlfYC+td3yJsPk4Q8B8z/92TmAuPJ
 5pkkaxjd7qm2gXmfpJdab+BGWsTWA20NekgZfwte7dn1Lv1Nnyumn0f0j/xW4nDfOY/S
 APJFcC29a4Fmfk8b+otuussibXIcFff0/EoQcgiYbNCnBCRmm2R6y6q2ecqPQi7hgLQ9
 ajGOfuDnA1tYdZ8yFA+WvfDbTb8UxqJmtZmMBHpiFOwi1CnK2tWp9iXljbrNKMtBU3aT
 p8/g==
X-Gm-Message-State: APjAAAWZROA7v9OlA+hBo+PERmQDRnKMgX3sDiPiF05HxflOGXMzzyRq
 6yO9v/VdYw2Bl3PbU7su1i4U5jiVXQ==
X-Google-Smtp-Source: APXvYqxWT1PVLgLraoG5l1YnHQCQXpLGJqWfV6AhDZc9R19SU6Cw59BrvIxfNK8vM+qGOeAB//tYmQ==
X-Received: by 2002:a05:600c:214f:: with SMTP id
 v15mr4011688wml.110.1579881400061; 
 Fri, 24 Jan 2020 07:56:40 -0800 (PST)
Received: from localhost.localdomain (a109-49-10-77.cpe.netcabo.pt.
 [109.49.10.77])
 by smtp.gmail.com with ESMTPSA id z4sm7149976wma.2.2020.01.24.07.56.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 07:56:39 -0800 (PST)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 24 Jan 2020 15:56:32 +0000
Message-Id: <20200124155632.17807-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_075641_678460_E377EBF2 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v3] fw3: robustify flow table detection.
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

djM6IGNoYW5nZWQgc3RybmNtcCB0byBzdHJjbXAsIHNpbmNlIGJvdGggc3RyaW5ncyBhcmUgbnVs
bC10ZXJtaW5hdGVkLgoKdjI6IGFkZHJlc3NlZCBQZXRyIMWgdGV0aWFyJ3MgY29uY2VybnMgYW5k
IGFsc28gY2hhbmdlZCB0aGUgZ2VuZXJpYyBoZWxwZXIKdG8gY2hlY2sgZm9yIHRoZSBhdmFpbGFi
aWxpdHkgb2YgSVB2NCBvciBJUHY2IHRhcmdldHMsIGFzIG5lZWRlZC4KClRoZSBmbG93IHRhYmxl
IGRldGVjdGlvbiBmYWlscyBpZiB0aGUgcmVzcGVjdGl2ZSB0YXJnZXQgbW9kdWxlIGlzCmJ1aWx0
LWluLCBzaW5jZSBpdCdzIGxvb2tpbmcgZm9yIHRoZSBtb2R1bGUgaXRzZWxmLiBDcmVhdGUgYSBn
ZW5lcmljCmhlbHBlciBhbmQgaW5zdGVhZCBjaGVjayBmb3IgZXhpc3RlbmNlIG9mIHRoZSBGTE9X
T0ZGTE9BRCB0YXJnZXQgaW4KL3Byb2MvbmV0L2lwX3RhYmxlc190YXJnZXRzLgoKU2lnbmVkLW9m
Zi1ieTogUnVpIFNhbHZhdGVycmEgPHJzYWx2YXRlcnJhQGdtYWlsLmNvbT4KLS0tCiBkZWZhdWx0
cy5jIHwgMjUgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogdXRpbHMuYyAgICB8IDI3ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKwogdXRpbHMuaCAgICB8ICAyICsrCiAzIGZpbGVzIGNoYW5n
ZWQsIDM2IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RlZmF1
bHRzLmMgYi9kZWZhdWx0cy5jCmluZGV4IGYwMzc2NWMuLmM3OGFiNTEgMTAwNjQ0Ci0tLSBhL2Rl
ZmF1bHRzLmMKKysrIGIvZGVmYXVsdHMuYwpAQCAtODUsMjYgKzg1LDE0IEBAIGNoZWNrX3BvbGlj
eShzdHJ1Y3QgdWNpX2VsZW1lbnQgKmUsIGVudW0gZnczX2ZsYWcgKnBvbCwgY29uc3QgY2hhciAq
bmFtZSkKIH0KIAogc3RhdGljIHZvaWQKLWNoZWNrX2ttb2Qoc3RydWN0IHVjaV9lbGVtZW50ICpl
LCBib29sICptb2R1bGUsIGNvbnN0IGNoYXIgKm5hbWUpCitjaGVja190YXJnZXQoc3RydWN0IHVj
aV9lbGVtZW50ICplLCBib29sICphdmFpbGFibGUsIGNvbnN0IGNoYXIgKnRhcmdldCwgY29uc3Qg
Ym9vbCBpcHY2KQogewotCUZJTEUgKmY7Ci0JY2hhciBidWZbMTI4XTsKLQotCWlmICghKm1vZHVs
ZSkKLQkJcmV0dXJuOwotCi0Jc25wcmludGYoYnVmLCBzaXplb2YoYnVmKSwgIi9zeXMvbW9kdWxl
LyVzL3JlZmNudCIsIG5hbWUpOwotCi0JZiA9IGZvcGVuKGJ1ZiwgInIiKTsKLQotCWlmIChmKQor
CWNvbnN0IGJvb2wgYiA9IGZ3M19oYXNfdGFyZ2V0KGlwdjYsIHRhcmdldCk7CisJaWYgKCFiKQog
CXsKLQkJZmNsb3NlKGYpOwotCQlyZXR1cm47CisJCXdhcm5fZWxlbShlLCAicmVxdWlyZXMgdW5h
dmFpbGFibGUgdGFyZ2V0IGV4dGVuc2lvbiAlcywgZGlzYWJsaW5nIiwgdGFyZ2V0KTsKIAl9Ci0K
LQl3YXJuX2VsZW0oZSwgInJlcXVpcmVzIG5vdCBhdmFpbGFibGUga2VybmVsIG1vZHVsZSAlcywg
ZGlzYWJsaW5nIiwgbmFtZSk7Ci0JKm1vZHVsZSA9IGZhbHNlOworCSphdmFpbGFibGUgPSBiOwog
fQogCiBzdGF0aWMgdm9pZApAQCAtMTcxLDcgKzE1OSw4IEBAIGZ3M19sb2FkX2RlZmF1bHRzKHN0
cnVjdCBmdzNfc3RhdGUgKnN0YXRlLCBzdHJ1Y3QgdWNpX3BhY2thZ2UgKnApCiAKIAkJY2hlY2tf
YW55X3JlamVjdF9jb2RlKGUsICZkZWZzLT5hbnlfcmVqZWN0X2NvZGUpOwogCi0JCWNoZWNrX2tt
b2QoZSwgJmRlZnMtPmZsb3dfb2ZmbG9hZGluZywgInh0X0ZMT1dPRkZMT0FEIik7CisJCS8qIGV4
aXN0cyBpbiBib3RoIGlwdjQgYW5kIGlwdjYsIGlmIGF0IGFsbCwgc28gb25seSBjaGVjayBpcHY0
ICovCisJCWNoZWNrX3RhcmdldChlLCAmZGVmcy0+Zmxvd19vZmZsb2FkaW5nLCAiRkxPV09GRkxP
QUQiLCBmYWxzZSk7CiAJfQogfQogCmRpZmYgLS1naXQgYS91dGlscy5jIGIvdXRpbHMuYwppbmRl
eCA0NDFkYmQyLi5kYTY1NjMyIDEwMDY0NAotLS0gYS91dGlscy5jCisrKyBiL3V0aWxzLmMKQEAg
LTM0NCw2ICszNDQsMzMgQEAgZnczX2hhc190YWJsZShib29sIGlwdjYsIGNvbnN0IGNoYXIgKnRh
YmxlKQogCXJldHVybiBzZWVuOwogfQogCitib29sCitmdzNfaGFzX3RhcmdldChjb25zdCBib29s
IGlwdjYsIGNvbnN0IGNoYXIgKnRhcmdldCkKK3sKKwlGSUxFICpmOworCisJY2hhciBsaW5lWzEy
XTsKKwlib29sIHNlZW4gPSBmYWxzZTsKKworCWNvbnN0IGNoYXIgKnBhdGggPSBpcHY2CisJCT8g
Ii9wcm9jL25ldC9pcDZfdGFibGVzX3RhcmdldHMiIDogIi9wcm9jL25ldC9pcF90YWJsZXNfdGFy
Z2V0cyI7CisKKwlpZiAoIShmID0gZm9wZW4ocGF0aCwgInIiKSkpCisJCXJldHVybiBmYWxzZTsK
KworCXdoaWxlIChmZ2V0cyhsaW5lLCBzaXplb2YobGluZSksIGYpKQorCXsKKwkJaWYgKCFzdHJj
bXAobGluZSwgdGFyZ2V0KSkKKwkJeworCQkJc2VlbiA9IHRydWU7CisJCQlicmVhazsKKwkJfQor
CX0KKworCWZjbG9zZShmKTsKKworCXJldHVybiBzZWVuOworfQogCiBib29sCiBmdzNfbG9ja19w
YXRoKGludCAqZmQsIGNvbnN0IGNoYXIgKnBhdGgpCmRpZmYgLS1naXQgYS91dGlscy5oIGIvdXRp
bHMuaAppbmRleCBjOGNmNjlhLi4yNTRiZWE0IDEwMDY0NAotLS0gYS91dGlscy5oCisrKyBiL3V0
aWxzLmgKQEAgLTEwNSw2ICsxMDUsOCBAQCB2b2lkIGZ3M19wcihjb25zdCBjaGFyICpmbXQsIC4u
LikKIAogYm9vbCBmdzNfaGFzX3RhYmxlKGJvb2wgaXB2NiwgY29uc3QgY2hhciAqdGFibGUpOwog
Citib29sIGZ3M19oYXNfdGFyZ2V0KGNvbnN0IGJvb2wgaXB2NiwgY29uc3QgY2hhciAqdGFyZ2V0
KTsKKwogYm9vbCBmdzNfbG9jayh2b2lkKTsKIHZvaWQgZnczX3VubG9jayh2b2lkKTsKIGJvb2wg
ZnczX2xvY2tfcGF0aChpbnQgKmZ3M19sb2NrX2ZkLCBjb25zdCBjaGFyICpwYXRoKTsKLS0gCjIu
MjUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
