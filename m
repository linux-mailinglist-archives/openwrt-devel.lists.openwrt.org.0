Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E06148B80
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Jan 2020 16:53:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ryq8GSQ/8RhOitjlpOJonzEKpidTkOtZ1k+EbghjFMo=; b=E6ZAQwnT8qY4Ha
	MwNl7F7XFXNXIy9xwZO6rMKlVKG2mpfINRgPh5hpi6KIgulO2BhdgemWcwNdDPkk2fkiD4E/cjWBM
	K2gRW76SZLY3oNJQVaVOBfdOLHMPfHCndF1Uno/yXwGPNkUM22vNKAx/QrmJ649YHRdQ+EwpZ2fJ1
	MDNZVQ1OVnzuPvVbH+5Ga2jAJYCtoG2WdqIJrZbkS8SFVW1zdeU6HJFVVtCuFgZUE11cOA/tin5jd
	1ljarghoHzShQpmBd7rgGCpSU85hO3PoLFqiuTBl6ghpFIDySpzeS9yyz1eT7TLGmw71d/3NRGrhV
	zX+mOlvzSzWf5SuOHrUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1GN-0004SL-9h; Fri, 24 Jan 2020 15:52:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1GH-0004Rj-Gh
 for openwrt-devel@lists.openwrt.org; Fri, 24 Jan 2020 15:52:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id u2so2164805wmc.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Jan 2020 07:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DeUp3sFjzAyHMS+K4XQDYSSpx8HsAjxwgPDfvsnM/0I=;
 b=QI45P9qawseq0ZLrkNsVq6hOpiTrOVnTGM7Jxt+irbCZFp+MD42X6ApX0yoT83yDpE
 CWt7o3FPVYEPDaN5zjjggYHj2oejLlV4NDPjq+plFFIi9UO46aYcUkHeiV16EB6B0MG+
 Kf1OGSuDwVAg0af2ZIbrt1ju3X93iENhmw/rDJHeQjNvdjGdgEA+v66oXI6DPZh3/AJy
 ZMw/T0hdclCq8Wt8eNdS/PcXwllkV7oXtlCkDFbH2AyUH6H1cd6ht8qVkaP3UJGsTqIn
 r1P/1F9N/+UFW0WwseH/KhCoJrQERLaJRosT3YcCifdEQqC2O/cNjzZa+e59KyBmgwdV
 KI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DeUp3sFjzAyHMS+K4XQDYSSpx8HsAjxwgPDfvsnM/0I=;
 b=Mc6GfO4DIJyzPyvktLT3s3mzQqj7Vqxgc95jOtqDXNNBccuDK26Epx+fSDYVPlkXnQ
 5ygyJx+O+X+cmEQmpzm6FsN7gDXtIiHc3Jo9j8tLOgY+MyHjgJ1iFpdmfeZTbN8I0HG1
 lKReJfvqbURvu+xvGoHi1Ht0mQhdob8wZW93zd1SCSkQYUcOBMAAK0OQBrdoboEGj0za
 9jm5jqwf9ElDtUoA8hl/wsHIlWntrdHa7l1JlqF03ZVLycUU3bvN+glSHx8/dEgDrITh
 7kSozo8ESf7HnAHMR9sWrEDTld43q8TGwbiOemdlTChDBoCHEhSBEM1q225czMZzr0Xg
 4MKw==
X-Gm-Message-State: APjAAAUmGwXkc2WVmW+C9fSF/npPKB5VnApGm23SXoKTWu82TYoWrFAn
 z5U0zk3wnllT0tToyiEwUYYAIfs=
X-Google-Smtp-Source: APXvYqxq4ZS3tM6rjuFnU9yA918xeErvWMcnTfW+5BAfpVkqHqrf/Mk1u9EgKGbFfsTmTX/9UN4/yQ==
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr3951869wml.138.1579881163147; 
 Fri, 24 Jan 2020 07:52:43 -0800 (PST)
Received: from localhost.localdomain (a109-49-10-77.cpe.netcabo.pt.
 [109.49.10.77])
 by smtp.gmail.com with ESMTPSA id m21sm7236048wmi.27.2020.01.24.07.52.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 07:52:42 -0800 (PST)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 24 Jan 2020 15:52:38 +0000
Message-Id: <20200124155238.17749-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_075245_580924_13F2EEB3 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] fw3: robustify flow table detection.
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
