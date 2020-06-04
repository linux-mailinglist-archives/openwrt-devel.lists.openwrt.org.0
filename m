Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42411EDD9D
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 09:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdT3mTHK/08VRQBhGwbxB6XMMSPLdcpZc8s9BWK3Yb0=; b=ZJ0S+6egcIuiMC
	3gSxSNOlSv9ahS0cnl38EId9/1cmgBRvCVr+uAQ6MJMRq9EzrrNl+PKz9OUl51U8J5iy5rk6nMvBO
	Ope7NH887BjNHG3mI9kfnGWThIzG5q1W82of0ljSXYeJV9Kq8gwUWZWtDvZQ+4UA/aqMqz8Y/HmAw
	9J8/QDV7B6EpAEI4RZlxOBwow+IMlO7e5aDddnAmJuU4CBnUJPxURLuYBEM4XueQDNKh0dsVEZfS8
	FNgrSmEPPom0k7x7EWrtomva9jxts3RuEzH2GnZdL/rfVC2yWeZho4tbGQM3tuYgtGEGzPO6+Jpsf
	99o8dyw2Bi1M3kZu4pGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgjvl-0004xS-J4; Thu, 04 Jun 2020 07:04:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgjvd-0004wG-Lb
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 07:04:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id x14so4851581wrp.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 00:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=blQxqok1xP+/0PAhNQicZR+Fi99enpS9g2kek88Czps=;
 b=L6vLSjoVVJSxavgr4XLCrhOefHZoflNF6ZM9Rs5RSW1ICtW4C7AYv/5cZVITJc0tE1
 qMPap6p8xH0hl5miwUYVNVXUOR/Ikk9W4qsiJRprNHQ8PRy3Qtt3DVnFFf040E4YRYSI
 4GSh4tMrQ/b7UEtWqs62jf8aU6s11ZQakYOtCXf92pU+a48kOnLs0WzfiJ8fmOvWHw7l
 iH2BIKXtoM8UE+IuC617kMDSJFQy5XDGOScH0u5IELjOGaLdNb2hVvG4t6j1ICyee1Ae
 wJj5OvBWZZbDHLoiz8jnU9hIaFWzfRuBxD7LoGCrxV9YXZr+sGjIB3gtwB1E9clyWnnt
 ihUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=blQxqok1xP+/0PAhNQicZR+Fi99enpS9g2kek88Czps=;
 b=tILh27NeKtvgvq06z6s4QLZnOnTZLGH2Ghlm1uYKZOoLxILpnPIwoiX8AH11HIntVo
 KzHsJG4wzxZ/13A4qjppKdA4zIkaXUN43bxFpzNpn6f8knRzCWX3A9MGh+tpJjEVRFwZ
 Dglz/QIJZfIV/C5A3ZkHPIdcXy+SC6pg4xZOhb/SkdZcLz9JkiDKmfst5a4VX3zMq2wW
 efko6VIkN3sJf8yItStaH6QeF8uUK+KuAX0Dy+JJxaEZu+JB8gIcjAamkSWC5YThVEhU
 Qq7orJEVYMA1I/Jya9dzNJUfzSGhrtY9PAMWeZcaZpkwYkSmR/m53DGQcZLF8FDSAIxe
 3u8A==
X-Gm-Message-State: AOAM5304GGPDhiCZZ1wrwSxNSSNazZIJ49IKGHvuAhyDF/DYv6pMWF4g
 e32850/p70F9hTlJ/20vNRo8/Hk0b8c=
X-Google-Smtp-Source: ABdhPJzsAw3Y+HECWm1RlFFJrWRsrbolg/6b8byONESMzZZ5lpjSMuc0Woy3cNjkOIJbofjOdfyUrw==
X-Received: by 2002:adf:f6ce:: with SMTP id y14mr3100666wrp.90.1591254280433; 
 Thu, 04 Jun 2020 00:04:40 -0700 (PDT)
Received: from macbook-pro-alvaro-eth.lan
 (28.red-83-49-61.dynamicip.rima-tde.net. [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id c5sm7039897wrb.72.2020.06.04.00.04.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jun 2020 00:04:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <3608830.1HcjCr2GE9@tool>
Date: Thu, 4 Jun 2020 09:04:36 +0200
Message-Id: <4EB1FA8F-58E3-479F-BBB4-F0F5EED93273@gmail.com>
References: <3608830.1HcjCr2GE9@tool>
To: =?utf-8?Q?Daniel_Gonz=C3=A1lez_Cabanelas?= <dgcbueu@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_000441_708239_5957074E 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] bcm63xx: image: don't add the CFE
 to the sercomm factory
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T2ssIEkgYXNzdW1lIGl04oCZcyBzYWZlIHRvIGRyb3AgdGhpcywgc2luY2UgdGhlIGJvb3Rsb2Fk
ZXIgaXMgb24gYSBzZXBhcmF0ZSBwYXJ0aXRpb24gYW5kIGFsbCBTZXJjb21tIGRldmljZXMgc2Vl
bSB0byBoYXZlIGJvdGggYm9vdGxvYWRlcnMgYXZhaWxhYmxlIGZyb20gZmFjdG9yeS4KCj4gRWwg
NCBqdW4gMjAyMCwgYSBsYXMgMDo0OCwgRGFuaWVsIEdvbnrDoWxleiBDYWJhbmVsYXMgPGRnY2J1
ZXVAZ21haWwuY29tPiBlc2NyaWJpw7M6Cj4gCj4gVGhlcmUgaXMgbm8gbmVlZCB0byBpbmNsdWRl
IHRoZSBDRkUgYm9vdGxvYWRlciBpbiB0aGUgU2VyY29tbSBmYWN0b3J5Cj4gaW1hZ2VzLgo+IAo+
IFRoZXJlIG1pZ2h0IGJlIGEgY2FzZSB3aGVuIHRoaXMgY291bGQgYmUgdXNlZnVsOgo+ICAtIFdl
IGFyZSBydW5uaW5nIHRoZSBzdG9jayBmaXJtd2FyZSBvbiB0aGUgZmlyc3QgU2VyY29tbSBpbWFn
ZQo+ICAtIFRoZSBzZWNvbmQgcGFydGl0aW9uIHN0b3JpbmcgdGhlIGJvdGxvYWRlciB3YXMgZXJh
c2VkICh1bmxpa2VseSkKPiBFdmVuIGluIHRoaXMgY2FzZSBmbGFzaGluZyBhbiBpbWFnZSB3aXRo
b3V0IGEgYm9vdGxhZGVyIGlzIGhhcm1sZXNzLgo+IAo+IERvbid0IGluY2x1ZGUgdGhlIGJvb3Rs
b2FkZXIgaW4gdGhlIGZhY3RvcnkgaW1hZ2UgY3JlYXRpb24gYW5kIHJpZCBvZiB0aGUKPiByaXNr
IG9mIGZsYXNoaW5nIGZhY3RvcnkgaW1hZ2VzIHdpdGggYW4gdW50ZXN0ZWQgYm9vdGxvYWRlciBw
YXJ0aXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIEdvbnrDoWxleiBDYWJhbmVsYXMg
PGRnY2J1ZXVAZ21haWwuY29tPgo+IC0tLQo+IHRhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01h
a2VmaWxlIHwgMTIgLS0tLS0tLS0tLS0tCj4gMSBmaWxlIGNoYW5nZWQsIDEyIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtlZmlsZSBi
L3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlCj4gaW5kZXggZWI0Yjc4YjA2YS4u
ZTU3Yjk5MzkxZiAxMDA2NDQKPiAtLS0gYS90YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtl
ZmlsZQo+ICsrKyBiL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlCj4gQEAgLTI0
MiwyMCArMjQyLDggQEAgZGVmaW5lIEJ1aWxkL2NmZS1zZXJjb21tLXBhcnQKPiAJCS0tcGFydC1u
YW1lIHJvb3Rmc19saWIgXAo+IAkJLS1wYXJ0LXZlcnNpb24gJChTRVJDT01NX1ZFUlNJT04pCj4g
Cj4gLQlybSAtcmYgJEAtYm9vdGxvYWRlcgo+IC0JbWtkaXIgLXAgJEAtYm9vdGxvYWRlcgo+IC0J
Y3AgJChLRElSKS9iY202M3h4LWNmZS8kKENGRV9SQU1fRklMRSkgJEAtYm9vdGxvYWRlci8kKENG
RV9SQU1fSkZGUzJfTkFNRSkKPiAtCSQoY2FsbCBCdWlsZC9jZmUtamZmczIsJEAtYm9vdGxvYWRl
cikKPiAtCSQoY2FsbCBCdWlsZC9wYWQtdG8sJChCTE9DS1NJWkUpKQo+IC0JJChUT1BESVIpL3Nj
cmlwdHMvc2VyY29tbS1wYXJ0aXRpb24tdGFnLnB5IFwKPiAtCQktLWlucHV0LWZpbGUgJEAgXAo+
IC0JCS0tb3V0cHV0LWZpbGUgJEAuYm9vdGxvYWRlciBcCj4gLQkJLS1wYXJ0LW5hbWUgYm9vdGxv
YWRlciBcCj4gLQkJLS1wYXJ0LXZlcnNpb24gJChTRVJDT01NX1ZFUlNJT04pCj4gLQo+IAltdiAk
QC5rZXJuZWxfcm9vdGZzICRACj4gCWRkIGlmPSRALnJvb3Rmc19saWIgPj4gJEAKPiAtCWRkIGlm
PSRALmJvb3Rsb2FkZXIgPj4gJEAKPiBlbmRlZgo+IAo+IGRlZmluZSBCdWlsZC9jZmUtc2VyY29t
bS1sb2FkCj4gLS0gCj4gMi4yNy4wCj4gCj4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
