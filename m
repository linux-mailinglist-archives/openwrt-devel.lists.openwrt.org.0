Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44A2D3D7D
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 12:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1fj0R7t7cbdGmFgle4ZsYctWwKZVbuRSuNsbZR5Z8WA=; b=ZpLYXhZgJdsaDKUBTbL9UcA7Sb
	IdJD0p5kngv7hpq1Jm2RHSxLVZwAf7oN5So+d9+dtGrclZ+7GInOdKKZg2eZmOG+/UpJbunNMHQHs
	zJmGo27aXV3ITqjJEFGTuIyK7tTja0CZPcNSEDt8aNqRM2uRGEtsA5pHR1Hty4tSaRs6E44Jw+Mwg
	/gRr4Fw/D4UlvmMJsO6iehpsJ/Fc4LfQ8FGQxKxojJJN/JO/9plxCAKw4NYYK3Z0Z8PG8s9JJdYfq
	VITwiyWJIefk7OuP5B5fuM/fxcluUYEhiNpqAjQXRoIMHal/OBTblKYuHeiVNPQLQSabgIufC1AbQ
	QRgBQnDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsGv-0003iv-Lq; Fri, 11 Oct 2019 10:35:45 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsGi-0003XX-Dn
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 10:35:34 +0000
Received: from miraculix.mork.no
 ([IPv6:2a02:2121:304:4460:c09a:74ff:fe7f:b715])
 (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x9BAZQ0o016584
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
 for <openwrt-devel@lists.openwrt.org>; Fri, 11 Oct 2019 12:35:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1570790127; bh=4gLayqV6Jk5S5hklUVT0hU6NMFa/allGi+Fi7SJ2fzk=;
 h=From:To:Subject:References:Date:Message-ID:From;
 b=nS8dl9OlHRCFsX8K6NVsfJWJ7nhbEkRAsQwNocwsTGIdC8JNmrj0GwHTc6iuCeOM/
 3mv6XLq4dPiuLEvmaNFLv1PlBIK0RPRIbAAztJXFv0FtWKU7Wi11o2106v84q50DmE
 Ium8o/GovauBgA/1t2blh6loO5DS58aYw7TW1hHU=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>) id 1iIsGc-0003UX-MG
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 12:35:26 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Organization: m
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
Date: Fri, 11 Oct 2019 12:35:26 +0200
In-Reply-To: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com> (Hannu Nyman's
 message of "Sun, 1 Sep 2019 11:59:49 +0300")
Message-ID: <87v9svtvrl.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033532_990110_90D21DE7 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGFubnUgTnltYW4gPGhhbm51Lm55bWFuQHdlbGhvLmNvbT4gd3JpdGVzOgoKPiBIYXMgdGhlIGFj
dHVhbCByZWxlYXNlIHRpbWV0YWJsZSBiZWVuIGRpc2N1c3NlZD8gV2hlbiBjb3VsZCB3ZSBleHBl
Y3QKPiBmaXJzdCBvZmZpY2lhbCByZWxlYXNlIGJ1aWxkcz8KCi4uLiBtb3JlIHRoYW4gYSBtb250
aCBhZ28uIEFuZCB3ZSdyZSBhcyB3aXNlIGFzIGJlZm9yZS4KClJlZmVycmluZyB0byBodHRwczov
L29wZW53cnQub3JnL2Fib3V0ICwgSSBjYW4gc29ydCBvZiB1bmRlcnN0YW5kIHRoYXQKdGhlCgog
ICJNYWtlIHJlZ3VsYXIsIHByZWRpY3RhYmxlIHJlbGVhc2UgY3ljbGVzIGNvdXBsZWQgd2l0aCBj
b21tdW5pdHkKICAgcHJvdmlkZWQgZGV2aWNlIHRlc3RpbmcgZmVlZGJhY2suIgoKZ29hbCBpcyB0
b3VnaC4gIEl0IGlzIHZlcnkgYW1iaXRpb3VzLiAgTWF5YmUgdG9vIGFtYml0aW91cz8KCkJ1dCBJ
IGRvIG5vdCB1bmRlcnN0YW5kIHRoZSBsYWNrIG9mIHRyYW5zcGFyYW5jeSBhcm91bmQgdGhlIHJl
bGVhc2UKcHJvY2Vzcy4gVGhlIHRoaXJkIGdvYWwgc2hvdWxkIGJlIGFjaGlldmFibGUgd2l0aCBs
aXR0bGUgZWZmb3J0OgoKICAgIkVzdGFibGlzaCB0cmFuc3BhcmVudCBkZWNpc2lvbiBwcm9jZXNz
ZXMgd2l0aCBicm9hZCBjb21tdW5pdHkKICAgIHBhcnRpY2lwYXRpb24gYW5kIHB1YmxpYyBtZWV0
aW5ncy4iCgpUaGUgT3BlbldydCBwcm9qZWN0IGhhcyBzbyBmYXIgZmFpbGVkIHRvIHByb3ZpZGUg
YW55IHRpbWV0YWJsZSwgcmVsZWFzZQpjcml0aWNhbCBidWcgbGlzdCwgcmVsZWFzZSBnb2FscyBv
ciBhbnkgb3RoZXIgaW5zaWdodCBpbnRvIHRoZSByZWxlYXNlCnByb2Nlc3MuICBBRkFJQ1MsIHRo
YXQgaXMuICBQbGVhc2UgcHJvdmUgbWUgd3JvbmcgYnkgcG9pbnRpbmcgbWUgaW4gdGhlCnJpZ2h0
IGRpcmVjdGlvbi4KCk9yOiBTdGFydCBkaXNjdXNzaW5nIHRoZSByZWxlYXNlIGJsb2NrZXJzIGhl
cmUgYW5kIG5vdy4gIFRoYW5rcy4KCgoKQmrDuHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
