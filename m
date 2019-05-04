Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B19139EC
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 14:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvNmi9/OV2wh5WeE/qJQMT6yetVaWmYDkMxW2XYh4jo=; b=JTEt6A/Xv1sV1y
	kK04j5sTJOQVn8eSPnqCOLYSdi8RootzxpONy2A8s6bmqluvyXKki9vd28Fa8zMvs3OZwnDKiuWPI
	6OUbZADm6bqB0l/cwKs29VRLFyEo6t8gdFhcj2sk7P5w+aDCIzw+Cy+d/AsjyyEe3bAkAEFLzBGEE
	Vb6VaIfN5FIh/jiIX/MdcAuLcAJPpssG47qg5aeHx2efZ+yPQBqui6oKKn1Skyw4uh181LCPg2wLd
	peQvouWtC3Gih97mqGje3AV4ZKu3rn4qrOmjBtYNCRb0EE9ynx9/RF/cwyDV0icWfnFF9ATdmYwkp
	6TWLB+fuxBF2gNskx/fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMuE6-0006Bu-B6; Sat, 04 May 2019 12:57:14 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMuDz-0006BA-5H
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 12:57:08 +0000
Received: (wp-smtpd smtp.tlen.pl 19720 invoked from network);
 4 May 2019 14:57:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556974624; bh=Tj2uYbxrfprzVJqSlicr6aRM95lscplcAuHyRXKQBS4=;
 h=Subject:To:From;
 b=WgOLNyNP0g8aQfEgQazD9pS3Ss8IEsfCdBM3ItuqDPEexTzAaL7rbgKTbD1tpzLy7
 r+P75UhDv7rAvLagbDbVEMe0+IBMA1NuKOO5Z6CF9Gopzgc+YSrpFaScFPxKS62WYl
 h0zNyJveQsQ6jaUH3DnFylNq9cNuxnlpSrZQzhwM=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 4 May 2019 14:57:04 +0200
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-7-tomek_n@o2.pl>
 <a158c8c9-8ee2-ec28-7e59-f2f287e2606c@hauke-m.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <e287c642-9c54-1edb-3789-45978eeace89@o2.pl>
Date: Sat, 4 May 2019 14:57:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a158c8c9-8ee2-ec28-7e59-f2f287e2606c@hauke-m.de>
Content-Language: en-US
X-WP-MailID: 9f5236f8df4f53379b29e25773471286
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [ceP0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_055707_366722_566DF80D 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 6/8] mvebu: add vendor to device names
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

SGksCgpXIGRuaXUgMDQuMDUuMjAxOSBvwqAwMDowNCwgSGF1a2UgTWVocnRlbnMgcGlzemU6Cj4g
T24gNS8xLzE5IDc6NDIgUE0sIFRvbWFzeiBNYWNpZWogTm93YWsgd3JvdGU6Cj4+IFJlcGxhY2Ug
U29DIG5hbWVzIHdpdGggdmVuZG9ycyBpbiBkZXZpY2UgbmFtZXMsIGluIGZldyBjYXNlcywgYW5k
IGFkZAo+PiB2ZW5kb3IgdG8gZGV2ZWxvcGVtbnQgYm9hcmRzIGZvciBlYXNpZXIgaWRlbnR5Znlp
bmcgcG90ZW50aWFsIGZpcm13YXJlIHRvCj4+IGZsYXNoLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBU
b21hc3ogTWFjaWVqIE5vd2FrIDx0b21la19uQG8yLnBsPgo+IAo+IAo+PiBkaWZmIC0tZ2l0IGEv
dGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleC1hNzIubWsgYi90YXJnZXQvbGludXgvbXZl
YnUvaW1hZ2UvY29ydGV4LWE3Mi5tawo+PiBpbmRleCA4MjRmNmI1ZDBmLi4zMDQzZjA4N2NjIDEw
MDY0NAo+PiAtLS0gYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4LWE3Mi5tawo+PiAr
KysgYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29ydGV4LWE3Mi5tawo+PiBAQCAtMSwzMCAr
MSwzMCBAQAo+PiAgaWZlcSAoJChTVUJUQVJHRVQpLGNvcnRleGE3MikKPj4gIAo+PiAtZGVmaW5l
IERldmljZS9hcm1hZGEtbWFjY2hpYXRvYmluCj4+ICtkZWZpbmUgRGV2aWNlL21hcnZlbGwtbWFj
Y2hpYXRvYmluCj4+ICAgICQoY2FsbCBEZXZpY2UvRGVmYXVsdC1hcm02NCkKPj4gICAgREVWSUNF
X1RJVExFIDo9IE1BQ0NISUFUT2JpbiAoU29saWRSdW4gQXJtYWRhIDgwNDAgQ29tbXVuaXR5IEJv
YXJkKQo+PiAgICBERVZJQ0VfUEFDS0FHRVMgKz0ga21vZC1pMmMtY29yZSBrbW9kLWkyYy1tdXgg
a21vZC1pMmMtbXV4LXBjYTk1NHgKPj4gICAgREVWSUNFX0RUUyA6PSBhcm1hZGEtODA0MC1tY2Jp
bgo+PiAgICBTVVBQT1JURURfREVWSUNFUyA6PSBtYXJ2ZWxsLGFybWFkYTgwNDAtbWNiaW4KPj4g
IGVuZGVmCj4+IC1UQVJHRVRfREVWSUNFUyArPSBhcm1hZGEtbWFjY2hpYXRvYmluCj4+ICtUQVJH
RVRfREVWSUNFUyArPSBtYXJ2ZWxsLW1hY2NoaWF0b2Jpbgo+IAo+IFRoaXMgYm9hcmQgaXMgZnJv
bSBzb2xpZHJ1bgoKWWVzLCB0aGlzIGNhc2UgZGlkIG1ha2UgbWUgY29uZnVzZWQuIEkgd2VudCB3
aXRoIHdoYXQncyBpbiBtb2RlbCBhbmQgY29tcGF0aWJsZQpzdHJpbmcgaW4gZHRzLiBTb2xpZFJ1
biBhbHNvIGNhbGxzIGl0IHRoYXQgd2F5OgpodHRwczovL3d3dy5zb2xpZC1ydW4uY29tL21hcnZl
bGwtYXJtYWRhLWZhbWlseS9tYWNjaGlhdG9iaW4KQnV0IEknbGwgY2hhbmdlIHRoYXQgaW4gbmV4
dCB2ZXJzaW9uLgoKUmVnYXJkcwoKLS0gClRNTgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
