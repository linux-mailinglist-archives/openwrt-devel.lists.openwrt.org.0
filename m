Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF65D1F0865
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 21:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HxXmAyGwVoRR+O64Pjl/kmaq+QlXFOFbx22915d5CEU=; b=uZqkgvow2AHNn0
	UnO/wUrBr0rubfXEXoObYAXEHRMN5mQh/xm5bAlxVnDTa0mZB2Dwre96nGzf/rhhsqWKkk2CkHCxL
	Eih8tRSGU9ZEw6fKpNhASXcsg+IEdqYeCIafMiYcgZmRR5oRcyiD2xhe5+ICm6c8AJUCQVwlyR84L
	ACtlcPRmMcr38tt+IPuh9WkBSYHCcygWZyeItU+IrtoRtU/WvkbjCYsFRgGsJnCTg6bKY7HBbTymv
	SQpAX7HNnzf6tZf1ECtYCA/cXrDIpzXeiiDjE2ZC3G0yjY+jlnwUebZLYWNcrlKFPwQKGwSDc2jVV
	z5vln8Gq5I6r5fs1BcfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhevY-0000Hu-To; Sat, 06 Jun 2020 19:56:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhevR-0000G9-UV
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 19:56:19 +0000
Received: by mail-wr1-x442.google.com with SMTP id x14so13278414wrp.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 12:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2rO/GKK4QYR/0PFJfW1+BBWBV4pSFuC46y1hob0AQtU=;
 b=hQpcVj27sjl1JJ0u1MF80Co6K9JH+td0N25u40ZfFIr7vpJKsfOw01mRltL22bEi2+
 DCrR4uzeAAkF9SBCDEreLJ2EWRYQYLezr68eghsqKSA0BdTN/spTSEe1+nKZYayEANs+
 5rAwUINFtOrYi1AyE1PgnnSXHcPKC0j/2PL1rH5IL2STeFFkWJJD2n5fUbEX9f8seIrM
 uZwEylBzXanJObAMO7hm3ZQXHp8i1pKab+WczkSfd/O+gFZZaDk94BqxKCt9D6FOdaFp
 7kyxDZ2HtW8Y/LjnQNAiqk7ar5QIBQJyJrzVuiow6dDrPALPZTaWlolkn231ONVY6+nM
 wTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2rO/GKK4QYR/0PFJfW1+BBWBV4pSFuC46y1hob0AQtU=;
 b=dPTJ7JwwDz8pW1xTBxlEjxAwoQhUkEikXHYcRdTWrl5/vTjNz2DPU42i1B5GdvC+CM
 35YgQhxbtk4kxip7Kg3qAtN0zsz+dtmP6Si42nA1StPkuQ0lfBzyZeIPx7Yf7f07036u
 7BiHmzDmE6gtEzTG7Zc2L4MpArzd/x+syCYB9z9K7Q3rTflfbxiyrCOVal+OG0iBViN7
 a0JWvCprMTCp+JJ72SdbkuNmcBMTAbvMxsgIKGlPq8pwkr50KEFUqE5D5QRwwVP5Icd8
 C5XwczbfovkgMv8eQl8bUqHxn859m5vqgg45G9YpdMvFmZrqF0X5vSSHqSSWNBf7dOK+
 fm7A==
X-Gm-Message-State: AOAM5321iVI4HuBcHRvSlqS0DbZ2LpFFTAbJr2ctCle3mpeE2AiodROU
 Xp+V9aldgkegueBuJUeG7V5rommX
X-Google-Smtp-Source: ABdhPJxkdBpuzfmZob2kXOWB2VQay0sSknNTgEF51tT8QSuQ5RH99fwpYVJOoT5e5+zH0NoD+hus8Q==
X-Received: by 2002:a5d:4cc4:: with SMTP id c4mr15281370wrt.159.1591473374014; 
 Sat, 06 Jun 2020 12:56:14 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id i3sm17708571wrm.83.2020.06.06.12.56.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Jun 2020 12:56:13 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 06 Jun 2020 21:54:42 +0200
Message-ID: <1690244.uS5v2sdGyS@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_125617_982701_678FDD1D 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 3/4 v4] bcm63xx: image: allow to pass the
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
KSwgdGhlcmVmb3JlCndlJ2xsIG5lZWQgdG8gcGFzcyBhIGRpZmZlcmVudCBhZGRyZXNzIGFuZCBu
b3QgdGhlIExPQURFUl9FTlRSWS4KCkxldCB0byBwYXNzIHRoZSBhZGRyIHRvIHRoZSBpbWFnZSBj
cmVhdGlvbiB3aGVuIG5lY2Nlc3NhcnkuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR29uesOhbGV6
IENhYmFuZWxhcyA8ZGdjYnVldUBnbWFpbC5jb20+Ci0tLQpDaGFuZ2VzIGluIHYyOiByZWZyZXNo
CkNoYW5nZXMgaW4gdjM6IG5vbmUKQ2hhbmdlcyBpbiB2NDogbm9uZQoKIHRhcmdldC9saW51eC9i
Y202M3h4L2ltYWdlL01ha2VmaWxlIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4
L2ltYWdlL01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUKaW5k
ZXggYzk2MmU1MzFhOS4uMDU5M2RhY2I0NCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2JjbTYz
eHgvaW1hZ2UvTWFrZWZpbGUKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZp
bGUKQEAgLTE3Miw4ICsxNzIsOCBAQCBkZWZpbmUgQnVpbGQvY2ZlLWpmZnMyLWtlcm5lbAogCSQo
VE9QRElSKS9zY3JpcHRzL2NmZS1iaW4taGVhZGVyLnB5IFwKIAkJLS1pbnB1dC1maWxlICRAIFwK
IAkJLS1vdXRwdXQtZmlsZSAkQC1rZXJuZWwvdm1saW51eC5seiBcCi0JCS0tbG9hZC1hZGRyICQo
TE9BREVSX0VOVFJZKSBcCi0JCS0tZW50cnktYWRkciAkKExPQURFUl9FTlRSWSkKKwkJLS1sb2Fk
LWFkZHIgJChpZiAkKDEpLCQoMSksJChMT0FERVJfRU5UUlkpKSBcCisJCS0tZW50cnktYWRkciAk
KGlmICQoMSksJCgxKSwkKExPQURFUl9FTlRSWSkpCiAKIAkjIFRoZSBKRkZTMiBwYXJ0aXRpb24g
Y3JlYXRpb24gc2hvdWxkIHJlc3VsdCBpbiB0aGUgZm9sbG93aW5nCiAJIyBsYXlvdXQ6Ci0tIAoy
LjI3LjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
