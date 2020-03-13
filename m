Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2476D1849B0
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 15:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yD/1cmbsnvHkI5qlP5FbrRWWlJ86YE+LPEzub8iAlr0=; b=I1gIOrpPl23Oz8E2065myfu7v
	zW/9PPWljW2yJcvFe8QifIUg8xIy1Q7YwVofU2MIOQRF77OTnlFfS+PmNprQaAeBNgfos2547qjQL
	I+SbSAUCxKPQ2VxEMF6uuQkjCfP/stScLCAZ68HD0MQaYF/lQkXh32UjJB5T95yI5gm9fM30dUVvF
	oXuMRatfnX3OAA2Q6Qco1BfAZC9DoVaQaC7hsXftQ7RswhbRriRjC6cieiD5n9+8spVTGv023nSLw
	rqOk/7EgrpMHP74vD9P7ImzQ8CMDFItDPw1T2LvTxaLF+CfK9X8fhPojZ0sAzj5rkr0VSd1c4rKgu
	0bLOYOhkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClWE-0007CM-1P; Fri, 13 Mar 2020 14:42:34 +0000
Received: from mout-u-204.mailbox.org ([2001:67c:2050:1::465:204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClW3-0007B2-Nm
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 14:42:25 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48f7hD5CnpzQlG2;
 Fri, 13 Mar 2020 15:42:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1584110538;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wKAnqVB03gTTaYWWCFBVEA6exdHiW7nO59VnMsL/r2I=;
 b=BA9LwkmNl6c1oEO+Z0zQIOR2eHeeF8PCJ9GJC/R/MXD3WmUwXaRAN3TMx0qyzbByjxn2Rv
 zFYeeLqUQL6uBJpIjK+pEgZEk6yUUB8OB1gbLxmQDvljXjZ0z6YMdyQAqrXOW/jpfYIexp
 SWiT4034/Lkt5dM+vwMQU5fN+AzeTCI/ay0sC+mvCHgCYY2eei+WF1t9ZttYz2YiOe6r+L
 oNB/Ff5m4+B8WjR4i09Yb6a7ZNewCJesVDj3a353AxfSE0TJrwSqofkiEgD3o5UOqr7Kgx
 tqTszwx42vNapI/Oi/umsbGFprJO9Tp2paAIXu2HspVveACLP3uwX2UAC6PqWQ==
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 8VZxS697Mj5j; Fri, 13 Mar 2020 15:42:14 +0100 (CET)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 'Catrinel Catrinescu' <cc@80211.de>, openwrt-devel@lists.openwrt.org
References: <20200310120204.6704-1-cc@80211.de>
 <00b601d5f6d7$0a1111b0$1e333510$@adrianschmutzler.de>
 <VI1PR0302MB335814CBB9F315217C149B87EFFF0@VI1PR0302MB3358.eurprd03.prod.outlook.com>
 <48e03485-88e4-3b14-f355-de4f16ba3af8@gorani.run>
 <00c001d5f943$fdec3b20$f9c4b160$@adrianschmutzler.de>
From: mans0n <mans0n@gorani.run>
Message-ID: <1391e183-4d6a-b460-91a5-57479be279b2@gorani.run>
Date: Fri, 13 Mar 2020 23:42:05 +0900
MIME-Version: 1.0
In-Reply-To: <00c001d5f943$fdec3b20$f9c4b160$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_074223_948700_711F94A7 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] .gitignore: ignore all .config* files
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAyMC0wMy0xMyAyMzozMCwgQWRyaWFuIFNjaG11dHpsZXIgd3JvdGU6Cj4+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IG1hbnMwbiBbbWFpbHRvOm1hbnMwbkBnb3Jhbmku
cnVuXQo+PiBTZW50OiBGcmVpdGFnLCAxMy4gTcOkcnogMjAyMCAxNDoyNgo+PiBUbzogQ2F0cmlu
ZWwgQ2F0cmluZXNjdSA8Y2NAODAyMTEuZGU+OyBBZHJpYW4gU2NobXV0emxlcgo+PiA8bWFpbEBh
ZHJpYW5zY2htdXR6bGVyLmRlPjsgb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+PiBT
dWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0gLmdpdGlnbm9yZTogaWdub3JlIGFs
bCAuY29uZmlnKiBmaWxlcwo+Pgo+PiBIaSwKPj4KPj4gSWYgd2UgYXJlIGdvaW5nIHRvIGFjY2Vw
dCB0aGlzIHBhdGNoLCBJIHdvdWxkIHN1Z2dlc3QgIi8uY29uZmlnLioiCj4gCj4gVGhpcyB3b3Vs
ZCByZXF1aXJlIGEgc2VwYXJhdGUgIi8uY29uZmlnIiB0aG91Z2gsIHdvdWxkbid0IGl0PwoKWWVz
LCBleGFjdGx5LiBUaGF0IGlzIGFsc28gbXkgaW50ZW50aW9uLgoKPiAKPj4gaW5zdGVhZCBvZgo+
PiAiLy5jb25maWcqIi4gVGhhdCB3b3VsZCBzdWZmaWNlIGZvciBhbGwgbG9jYWwgdXNhZ2VzLgo+
Pgo+PiBUaGFua3MuCj4+Cj4+IE9uIDIwMjAtMDMtMTAgMjE6MzMsIGNjIGF0IDgwMjExLmRlIChD
YXRyaW5lbCBDYXRyaW5lc2N1KSB3cm90ZToKPj4+IEhpIEFkcmlhbgo+Pj4KPj4+IEFmdGVyIHN1
Y2Nlc3NmdWwgdGVzdGluZywgSSBhbHdheXMgc2F2ZSB0aGUgLmNvbmZpZyBmaWxlcywgYXR0YWNo
aW5nIHRoZQo+IHJldmlzaW9uCj4+IG51bWJlciwgbGlrZSAuY29uZmlnX3IxMjM0NS4KPj4+Cj4+
PiBBbmQgaXQgaXMgYSBjb3NtZXRpYyByZXBsYWNlbWVudCB0b28uCj4+Pgo+Pj4KPj4+IFRoYW5r
cwo+Pj4gQ2F0cmluZWwKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
