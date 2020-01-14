Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AA413B416
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 22:11:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Orsad37fGCLLCVc9pi9x1mUI8TdHZwRtyRilsif2yPs=; b=GnSdWZvTZFrQ/G
	SYDsy57P6IayUdIj6A3kQpTFZT3Bfl9KWuaFfpa69aagQcBYATMzCvzsHHEF/GieI7Sh27GmlArm1
	8S/cM5YO30f6yiwkU9nGMZI1M8sfI9jKjO2s3pN6rEhxjAUcI2k9z+6doikVPDQypXM9ta46WGwZc
	Qwof90JQGQzDVBztpt+ymmFlnsPrjY8P2xDjEZz7F43raKthM+lWilv+j8vHv9qE4QFdu9taX375S
	Uf3P4pM7yftlGB84FXwiVTnb3BuwS3TUWDpUz4PBo9h1JvYDgeDxWgR7+DUzkrQ+1CI36fcV1F7SJ
	rUcX2u5frQimjKqlb31g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irTTM-00006v-Me; Tue, 14 Jan 2020 21:11:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irTTB-00005z-Pe
 for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 21:11:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id u1so16023714ljk.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 Jan 2020 13:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=x3K3hUlJ2XT3Z5xRbvo4HZBx/iznrQSgsb7CNf+DGps=;
 b=P25tE6IhMyDb37cleXl2gqUGVyc31BJAbiE9lq7sJnR3mADD5mO9gl5cL30XdN5tZ/
 0jy9y/gEYrOYOU9S2KUW+da9jJtupwpeM1b9dx6bON8rv7eHVNHKZ+lM5HMRzzxYy2Qk
 gRfP86nycbset+nxFgdmik2NgAi5P4b+F6ezTDLqsYo3uPiutWGcgDeXh1oeJpcIbVy4
 jlZnoaHvlGwcki7Zg9iushTedriu4ajVi2Ej595GSEKyBVPPqahP7Z5VDnjCLmbcTtf3
 XOG3Y/M+IoZ8+iqorCAMAdQAiWC2ZuqDBGmd8BXnfnUAMAbtN+vSBwhbOOF4AHGJ1hvj
 f/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=x3K3hUlJ2XT3Z5xRbvo4HZBx/iznrQSgsb7CNf+DGps=;
 b=CQYRxXd3AR3QcpeD4aXqJIAd4Ih4eHcxa65/QSwUF0nC2bJVpkRaCe7cMuWFIQ5vYv
 bp6cl6i3qzgHP0IOEsf63IaatVLVwLdZuPtczvWJJ09+n60r8Kr7gcKokWWQ/ZKBsCOh
 eY49uIiilozz9mLweOdwiPGadlnwCgvdP+fZ4b+TCIPBNLACVQat+gqA0gSqSXV4B5Bk
 wY1IyF9PFea2U2k9PBHYFBz/BRm7Pt7/qC5D6DKxz7LOEjGo6cZRcMm2InR54w4K8hKX
 FrO8UPFLE7HcHnUJp9hyJHFKqRUaLLBijIIL0SLUQ3mM42evCbaX+kBhefHTugjsV47c
 7BhQ==
X-Gm-Message-State: APjAAAULJwtOFkfBhv2pYVad3/KPlNKaftXOKEjZg8P2wep3QFyqu9B/
 C9aguF+3v8fNPBwfBeCgFbXDmQ==
X-Google-Smtp-Source: APXvYqxtjHLRLNpi5bFvAYMMwtNgeOJtowsy/Wg4BfxTEdN1rrqkRg5CT0i/ixcABwyF6gRTl9njMw==
X-Received: by 2002:a2e:b5ac:: with SMTP id f12mr16059739ljn.0.1579036283308; 
 Tue, 14 Jan 2020 13:11:23 -0800 (PST)
Received: from pc ([193.14.244.60])
 by smtp.gmail.com with ESMTPSA id n3sm7815740lfk.61.2020.01.14.13.11.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 13:11:22 -0800 (PST)
Date: Tue, 14 Jan 2020 22:11:18 +0100
From: Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200114211118.GA160861@pc>
References: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
 <20200112120957.GF86978@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200112120957.GF86978@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_131125_971345_1ECA1A98 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH][libubox] blobmsg: blobmsg_parse and
 blobmsg_parse_array oob read fixes
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
Cc: openwrt-devel@lists.openwrt.org, luka.perkov@sartura.hr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpPbiBTdW4sIEphbiAxMiwgMjAyMCBhdCAwMTowOTo1N1BNICswMTAwLCBQZXRyIMWg
dGV0aWFyIHdyb3RlOgo+ID4gQEAgLTM1LDEwICszNSwxNiBAQCBzdGF0aWMgYm9vbCBibG9ibXNn
X2NoZWNrX25hbWUoY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAqYXR0ciwgc2l6ZV90IGxlbiwgYm9v
bCBuYQo+ID4gwqAgwqAgY2hhciAqbGltaXQgPSAoY2hhciAqKSBhdHRyICsgbGVuOwo+ID4gwqAg
wqAgY29uc3Qgc3RydWN0IGJsb2Jtc2dfaGRyICpoZHI7Cj4gPgo+ID4gKyDCoCBpZiAobGVuIDwg
c2l6ZW9mKHN0cnVjdCBibG9iX2F0dHIpICsgc2l6ZW9mKHN0cnVjdCBibG9ibXNnX2hkcikpCj4g
PiArIMKgIMKgIMKgIMKgIMKgIHJldHVybiBmYWxzZTsKPiA+ICsKPgo+IHdoeSBpcyB0aGlzIGNo
YW5nZSBuZWVkZWQ/IElmIEknbSByZWFkaW5nIGl0IGNvcnJlY3RseSwgdGhlbiBibG9ibXNnX2No
ZWNrX25hbWUKPiBpcyBvbmx5IGNhbGxlZCBmcm9tIGJsb2Jtc2dfY2hlY2tfYXR0cl9sZW4gYW5k
IHRoZXJlIGlzIGFscmVhZHkgbXVjaCBzdHJpY3RlciBndWFyZDoKPiDCoGJvb2wgYmxvYm1zZ19j
aGVja19hdHRyX2xlbihjb25zdCBzdHJ1Y3QgYmxvYl9hdHRyICphdHRyLCBib29sIG5hbWUsIHNp
emVfdCBsZW4pCj4gwqB7Cj4gwqAgwqAgwqAgwqAgaWYgKGxlbiA8IHNpemVvZihzdHJ1Y3QgYmxv
Yl9hdHRyKSkKPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4gZmFsc2U7Cj4KPiDCoCDC
oCDCoCDCoCBpZiAoIWJsb2Jtc2dfY2hlY2tfbmFtZShhdHRyLCBsZW4sIG5hbWUpKQo+IMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybiBmYWxzZTsKPgpJIHdhc24ndCBzdXJlIHdoYXQgdGhl
IGJlc3QgcGxhY2VtZW50IGZvciB0aGUgY2hlY2sgd291bGQgYmUsIHNvIEkgcHV0IGl0IGludG8g
dGhlIGJsb2Jtc2dfY2hlY2tfbmFtZSBmdW5jdGlvbi4KTXkgcmF0aW9uYWxlIGhvd2V2ZXIgd2Fz
IHRoYXQgdGhlIGV4aXN0aW5nIGNoZWNrIGluIGJsb2Jtc2dfY2hlY2tfYXR0cl9sZW4gY2hlY2tz
IHdoZXRoZXIgd2UgaGF2ZSBlbm91Z2ggZGF0YSB0byBjYWxsIGJsb2Jtc2dfY2hlY2tfbmFtZSBh
dCBhbGwsIGFzIGl0IHVzZXMgYXR0ciBhcyBhIGJsb2JfYXR0ciBzdHJ1Y3QuIFRoZSBjaGVjayB3
YXMgYWRkZWQgYmVjYXVzZSBzaXplb2Yoc3RydWN0IGJsb2JfYXR0cikgaXMgb25seSA0LCBhcyBp
dCBjb250YWlucyBhIHVpbnQzMl90IGFuZCBhIGZsZXhpYmxlIGFycmF5IG1lbWJlci4gVGhlIHNp
emUgb2YgdGhlIHN0cnVjdCBjb250YWluaW5nIHRoZSBmbGV4aWJsZSBhcnJheSBtZW1iZXIgaXMg
YXMgaWYgaXQgd2FzIG9taXR0ZWQgd2hlbiBkb2luZyBhIHNpemVvZiBvZiB0aGUgc3RydWN0LCBh
cyBzcGVjaWZpZWQgYnkgdGhlIEMgc3RhbmRhcmRzIGZyb20gQzk5IHVwd2FyZHMgaWYgSSByZWNh
bGwgY29ycmVjdGx5LiBUaGVyZWZvcmUsIGFub3RoZXIgbGVuIGNoZWNrIGluIGJsb2Jtc2dfY2hl
Y2tfbmFtZSBpcyBhZGRlZCB0byBjaGVjayBpZiB0aGVyZSBpcyBlbm91Z2ggZGF0YSBpbiBhdHRy
LT5kYXRhIHNvIHRoYXQgaXQgbWFrZXMgc2Vuc2UgdG8gY2FsbCBibG9iX2RhdGEoYXR0ciksIGFz
IG90aGVyd2lzZSwgaWYgdGhlIHN0cnVjdCBoYXMgb25seSB0aGUgZmlyc3QgNCBieXRlcyBmaWxs
ZWQgaW4sIHRoZSBmbGV4aWJsZSBhcnJheSBhdHRyLT5kYXRhIGlzIGVtcHR5LCBzbyBoZHItPm5h
bWVsZW4gd2lsbCBhY2Nlc3MgdW51c2VkIG1lbW9yeSB3aGljaCBjYXVzZXMgdGhlIG9vYiByZWFk
LgoKSGVyZSBpcyB0aGUgeHhkIG91dHB1dCBmb3IgdGhlIGNyYXNoIGZpbGUgdGhhdCBjYXVzZXMg
dGhlIGludmFsaWQgcmVhZCB3aGVuIHBhc3NlZCBhcyBkYXRhIHRvIGJsb2Jtc2dfcGFyc2VfYXJy
YXkgd2l0aCBhIGxlbiBvZiA0Ogp4eGQgY3Jhc2gtYTM1ODViNzBmMWM3ZmZiZGVjMTBmNmRhZGM5
NjQzMzYxMTg0ODVjNAowMDAwMDAwMDogMDMwMCAwMDA0IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLi4uLgoKSGVyZSBpcyB0aGUgcmVsZXZhbnQgdmFsZ3Jp
bmQgb3V0cHV0LCB0aGUgbWFpbiBmdW5jdGlvbiBoZXJlIHNpbXBseSByZWFkcyB0aGUgaW5wdXQg
YW5kIHBhc3NlcyBpdCB0byBibG9ibXNnX3BhcnNlX2FycmF5Ogo9PTEwODI5PT0gSW52YWxpZCBy
ZWFkIG9mIHNpemUgMgo9PTEwODI5PT0gwqAgwqBhdCAweDEwOURGQzogYmxvYm1zZ19uYW1lbGVu
IChibG9ibXNnLmg6NzQpCj09MTA4Mjk9PSDCoCDCoGJ5IDB4MTA5NDQ2OiBibG9ibXNnX2NoZWNr
X25hbWUgKGJsb2Jtc2cuYzo0MikKPT0xMDgyOT09IMKgIMKgYnkgMHgxMDkyREQ6IGJsb2Jtc2df
Y2hlY2tfYXR0cl9sZW4gKGJsb2Jtc2cuYzo3OSkKPT0xMDgyOT09IMKgIMKgYnkgMHgxMDlBNjM6
IGJsb2Jtc2dfcGFyc2VfYXJyYXkgKGJsb2Jtc2cuYzoxNTkpCj09MTA4Mjk9PSDCoCDCoGJ5IDB4
MTBBN0JBOiBtYWluIChibG9ibXNnLmM6NDEyKQo9PTEwODI5PT0gwqBBZGRyZXNzIDB4NGEyZTJi
NCBpcyAwIGJ5dGVzIGFmdGVyIGEgYmxvY2sgb2Ygc2l6ZSA0IGFsbG9jJ2QKPT0xMDgyOT09IMKg
IMKgYXQgMHg0ODM4NzdGOiBtYWxsb2MgKHZnX3JlcGxhY2VfbWFsbG9jLmM6MzA5KQo9PTEwODI5
PT0gwqAgwqBieSAweDEwQTc3MzogbWFpbiAoYmxvYm1zZy5jOjQwOCkKClRoZSBzYW1lIGlzc3Vl
IGFwcGVhcnMgd2l0aCB0aGUgc2FtZSBpbnB1dCBmaWxlIGZvciBibG9ibXNnX3BhcnNlLgoKPiA+
IMKgIMKgIGhkciA9IGJsb2JfZGF0YShhdHRyKTsKPiA+IMKgIMKgIGlmIChuYW1lICYmICFoZHIt
Pm5hbWVsZW4pCj4gPiDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4gZmFsc2U7Cj4gPgo+ID4gKyDC
oCBpZiAobGVuIDwgc2l6ZW9mKHN0cnVjdCBibG9iX2F0dHIpICsgc2l6ZW9mKHN0cnVjdCBibG9i
bXNnX2hkcikgKyBibG9ibXNnX25hbWVsZW4oaGRyKSArIDEpCj4gPiArIMKgIMKgIMKgIMKgIMKg
IHJldHVybiBmYWxzZTsKPgo+IERpZG4ndCBjaGVja2VkIGl0IGluIGRldGFpbCB5ZXQsIGJ1dCBp
c24ndCBpdCBhbG1vc3QgdGhlIHNhbWUgYXMgdGhlIGNoZWNrIGZldwo+IGxpbmVzIGJlbGxvdywg
anVzdCB3cml0dGVuIGRpZmZlcmVudGx5Pwo+ID4gwqAgwqAgaWYgKChjaGFyICopIGhkci0+bmFt
ZSArIGJsb2Jtc2dfbmFtZWxlbihoZHIpID4gbGltaXQpCj4gPiDCoCDCoCDCoCDCoCDCoCDCoCBy
ZXR1cm4gZmFsc2U7Cj4KPiAuLi4KPgoKWW91IGFyZSBjb3JyZWN0LCBpdCBpcyBhbG1vc3QgdGhl
IHNhbWUsIGhvd2V2ZXIgaXQgcHJldmVudHMgYW5vdGhlcgppbnZhbGlkIHJlYWQgYmVsb3csIGlu
IGJsb2Jtc2cuYzo0ODoKCsKgIGlmIChoZHItPm5hbWVbYmxvYm1zZ19uYW1lbGVuKGhkcildICE9
IDApCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybiBmYWxzZTsKCkkgYXNzdW1lIHRoYXQg
dGhpcyBjaGVja3Mgd2hldGhlciBoZHItPm5hbWUgaXMgYSBudWxsIHRlcm1pbmF0ZWQKc3RyaW5n
LiBIb3dldmVyLCBuYW1lbGVuIHNlZW1zIHRvIHN0b3JlIHRoZSByZXN1bHQgcmV0dXJuZWQgYXMg
aWYgaXQgd2FzIHJldHVybmVkIGJ5IHN0cmxlbiwKYW5kIHRoZSBsaW1pdCBjaGVjayBkb2Vzbid0
IHNlZW0gdG8gaW5jbHVkZSB0aGUgdGVybWluYXRpbmcgbnVsbCBieXRlLAphbHRob3VnaCBJIHN1
cHBvc2UgbW9kaWZ5aW5nIHRoYXQgY2hlY2sgd291bGQgZGVmaW5pdGVseSBiZSBiZXR0ZXIgdGhh
bgpoYXZpbmcgdHdvIGNoZWNrcy4gVGhlIGNoZWNrIHdvdWxkIHRoZW4gbG9vayBsaWtlIHRoaXM6
CgrCoCBpZiAoKGNoYXIgKikgaGRyLT5uYW1lICsgYmxvYm1zZ19uYW1lbGVuKGhkcikgKyAxID4g
bGltaXQpCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybiBmYWxzZTsKCgoKSGVyZSBpcyB0
aGUgeHhkIG9mIHRoZSBmaWxlIHRoYXQgY2F1c2VkIHRoZSBpc3N1ZSB0byBhcHBlYXI6CjAwMDAw
MDAwOiAwMzAwIDAwMDMgMDAwMCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCAuLi4uLi4KCkhlcmUgaXMgdGhlIHJlbGV2YW50IHZhbGdyaW5kIG91dHB1dDoKPT02MDc2PT0g
SW52YWxpZCByZWFkIG9mIHNpemUgMQo9PTYwNzY9PSDCoCDCoGF0IDB4MTA5NEI4OiBibG9ibXNn
X2NoZWNrX25hbWUgKGJsb2Jtc2cuYzo0OCkKPT02MDc2PT0gwqAgwqBieSAweDEwOTJERDogYmxv
Ym1zZ19jaGVja19hdHRyX2xlbiAoYmxvYm1zZy5jOjc5KQo9PTYwNzY9PSDCoCDCoGJ5IDB4MTA5
QTYzOiBibG9ibXNnX3BhcnNlX2FycmF5IChibG9ibXNnLmM6MTU5KQo9PTYwNzY9PSDCoCDCoGJ5
IDB4MTBBN0JBOiBtYWluIChibG9ibXNnLmM6NDEyKQo9PTYwNzY9PSDCoEFkZHJlc3MgMHg0YTJl
MmI2IGlzIDAgYnl0ZXMgYWZ0ZXIgYSBibG9jayBvZiBzaXplIDYgYWxsb2MnZAo9PTYwNzY9PSDC
oCDCoGF0IDB4NDgzODc3RjogbWFsbG9jICh2Z19yZXBsYWNlX21hbGxvYy5jOjMwOSkKPT02MDc2
PT0gwqAgwqBieSAweDEwQTc3MzogbWFpbiAoYmxvYm1zZy5jOjQwOCkKPiA+IEBAIC0xOTEsNyAr
MTk3LDExIEBAIGludCBibG9ibXNnX3BhcnNlKGNvbnN0IHN0cnVjdCBibG9ibXNnX3BvbGljeSAq
cG9saWN5LCBpbnQgcG9saWN5X2xlbiwKPiA+IMKgIMKgIH0KPiA+Cj4gPiDCoCDCoCBfX2Jsb2Jf
Zm9yX2VhY2hfYXR0cihhdHRyLCBkYXRhLCBsZW4pIHsKPiA+ICsgwqAgwqAgwqAgwqAgwqAgaWYg
KGxlbiA8IHNpemVvZihzdHJ1Y3QgYmxvYl9hdHRyKSArIHNpemVvZihzdHJ1Y3QgYmxvYm1zZ19o
ZHIpKQo+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4gLTE7Cj4KPiBJZiB0
aGVyZSBpcyBzdWNoIHByb2JsZW0sIHRoZW4gdGhpcyBzaG91bGQgYmUgcHJvYmFibHkgZml4ZWQg
ZGlyZWN0bHkgaW4KPiBfX2Jsb2JfZm9yX2VhY2hfYXR0ciBzbyB3ZSBwb3NzaWJseSBwcm90ZWN0
IG90aGVyIF9fYmxvYl9mb3JfZWFjaF9hdHRyCj4gdXNlcnNbMV0uCgpDYW4geW91IG1heWJlIHBy
b3ZpZGUgYSBwYXRjaD8gSSdkIGJlIGhhcHB5IHRvIHRlc3QgaXQgYW5kIGxldCB5b3UKa25vdyB3
aGF0IHRoZSByZXN1bHRzIGFyZS4KClJlZ2FyZHMsCkp1cmFqCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
