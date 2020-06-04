Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 185A21EE9D4
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 19:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RFXszkE+xlTC/E02vB+j6YhFSMXMlGObV99xEGbzm88=; b=hBWWKAnd+yIFzs
	2pLqmnmHrYP52JOcMn4GBj2N33z8WTrHROiyl43e5ODRk+0rzofiWYvho8xmppgw293jPnChRrOwo
	oV5LpoPDHzBJqgsl2rSrKZEp7Hst+L0otncQQkrq+oNnd6G3NGsRueppqwP7OhevVrBjLG0rSgIPs
	PBi43i1QcqtzPxmNm2EJPHHdaMq8v8ua4si+wag/GqmR1H9nJaJlfzEbYhwsjp9vAXTzZR5iOcvgo
	yDRTjJETO9CMhqhbv6xhNj4bj5XY9gjjMBEMLOqm1I8FQ/F4/oggWv0XARJqUsHqOD+wOe2ra347W
	nKqdfXfQrK3WUGFK5TtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgu4L-0001i1-KN; Thu, 04 Jun 2020 17:54:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgu4E-0001hD-Tt
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 17:54:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id x13so7102470wrv.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 10:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T3ppGjcRTiyTB+H8OX1QB0JXo+Nz+oK0aPC3L9nBWGM=;
 b=jqWuWo1eilEkgcA7jciRSPmQXQaP8dLcto9xfmdQTiizOpx14Bk850ZylbWeCWrgP1
 L0+tSTF9O/V4qR6Dd5ZCrdYPXRg6Il97gJBLfWBhiw89rSVJF5kJerPj5zZNLFrYGtVv
 7Q/QXtqLzbyourHXmBrNH2t56Wx9II3iQ6FmWrLwxK3CNE8Pl197kmXKy68twveB83/t
 djDIAjfDdLLAulrJ37oW0xctoO8F7y20o7a2mhDu6XrTwPglHlkUWrkDq3aKDZgMVh+b
 7ITBSw9JhuDDJxXlAwJY8cCC7RvtNsnVBYdkNRiSAXoLrFGRt1qiUCD6AvRvaTkamxb5
 l6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=T3ppGjcRTiyTB+H8OX1QB0JXo+Nz+oK0aPC3L9nBWGM=;
 b=CS4JpNWKpF6nxiYC3QfR6YRE2ddoJlJg3SXhOLx0t/Nb2yXMBlsTfsvRFVVuIWtk74
 /8HsPwvbEO3e5CTmk6c9wwTYbtO1Lnh4/hNaMCPFQcMQxPcV79WSaqxfIVdt0aCBYeBR
 +CfXFON/qxRpAbFRFB3+zPoGhAD5OnUktDtjCHMtZPzSiD8miI3YHi3m5v3P2Z4AuR8G
 583OzhUpOOLxtlbcrUD7u2VmeACS1sUnA75F5YB4nOak3Bdfp8i97iMGABLwWSFZlial
 equK7WNi87EJpH77dHS0SlmNq+KA7nWgEbJIaeqVtLzPT361O50L1lva8x9rH70eCXgo
 KBow==
X-Gm-Message-State: AOAM530BRGfa5R5eR6sRp3TuiiOCEhVGS64LmRblUwYqvLIixFD/guoa
 YEW1HwvFBfJjx5qluFF6u6b2QPRu
X-Google-Smtp-Source: ABdhPJzM4EoaaVVVSRkjJCfWYTBH+mTGZ2vr9nwpAF41jqdAM+ARIBn73kKDiZYl/B7UBuj+rv/mig==
X-Received: by 2002:adf:82d0:: with SMTP id 74mr5229785wrc.138.1591293253253; 
 Thu, 04 Jun 2020 10:54:13 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id l19sm8212533wmj.14.2020.06.04.10.54.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 10:54:12 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 04 Jun 2020 19:46:14 +0200
Message-ID: <3928196.Luy1bn5URE@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_105414_980588_8B516374 
X-CRM114-Status: UNSURE (   6.87  )
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
Subject: [OpenWrt-Devel] [PATCH 3/4 v2] bcm63xx: image: allow to pass the
 addr to the NAND kernel header
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

Tm90IGFsbCBDRkVzIHdpbGwgbmVlZCB0byByZWxvY2F0ZSB0aGUga2VybmVsIChpLmUgSDUwMC1z
KSwgdGhlcmVyZWZvcmUKd2UnbGwgbmVlZCB0byBwYXNzIGEgZGlmZmVyZW50IGFkZHJlc3MgYW5k
IG5vdCB0aGUgTE9BREVSX0VOVFJZLgoKTGV0IHRvIHBhc3MgdGhlIGFkZHIgdG8gdGhlIGltYWdl
IGNyZWF0aW9uIHdoZW4gbmVjY2Vzc2FyeS4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBHb256w6Fs
ZXogQ2FiYW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KLS0tCkNoYW5nZXMgaW4gdjI6IHJlZnJl
c2gKCiB0YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtlZmlsZSB8IDQgKystLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90
YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtlZmlsZSBiL3RhcmdldC9saW51eC9iY202M3h4
L2ltYWdlL01ha2VmaWxlCmluZGV4IGM5NjJlNTMxYTkuLjA1OTNkYWNiNDQgMTAwNjQ0Ci0tLSBh
L3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlCisrKyBiL3RhcmdldC9saW51eC9i
Y202M3h4L2ltYWdlL01ha2VmaWxlCkBAIC0xNzIsOCArMTcyLDggQEAgZGVmaW5lIEJ1aWxkL2Nm
ZS1qZmZzMi1rZXJuZWwKIAkkKFRPUERJUikvc2NyaXB0cy9jZmUtYmluLWhlYWRlci5weSBcCiAJ
CS0taW5wdXQtZmlsZSAkQCBcCiAJCS0tb3V0cHV0LWZpbGUgJEAta2VybmVsL3ZtbGludXgubHog
XAotCQktLWxvYWQtYWRkciAkKExPQURFUl9FTlRSWSkgXAotCQktLWVudHJ5LWFkZHIgJChMT0FE
RVJfRU5UUlkpCisJCS0tbG9hZC1hZGRyICQoaWYgJCgxKSwkKDEpLCQoTE9BREVSX0VOVFJZKSkg
XAorCQktLWVudHJ5LWFkZHIgJChpZiAkKDEpLCQoMSksJChMT0FERVJfRU5UUlkpKQogCiAJIyBU
aGUgSkZGUzIgcGFydGl0aW9uIGNyZWF0aW9uIHNob3VsZCByZXN1bHQgaW4gdGhlIGZvbGxvd2lu
ZwogCSMgbGF5b3V0OgotLSAKMi4yNy4wCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
