Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 657181A9911
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 11:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VNtRC/67/pss4Em2Cjf/3++4TdhN0tS6In+4DSq/Wi0=; b=gqr42nONe5RHm5gipQTU4f9ck
	C884Q0t4bIT6nPr+TNXbYEwJ1Hb7Be5Nc9ly0DpiflOBFeiONHBSetrQ3CtDhPi9iOvk762rCg1PM
	IZquLWu8Cg6S11jKpPxHCGzxf4vXHMpLs/n49N10TsFO/TFt0PGGFUa5WrqlYbiklLvSZTEj2cyNE
	kvhlK/QyCMrdcFxBzYwfKqvmhe8oKfARSFFTpzY+Z1hKq97rGCExUVs9bNt8rWEIzW++ATqPcMAIk
	fvndfTd//Xb1B1WsDOMxRrPiGj5F/8RY6+Owpj7OBt7+ZOeW/iVUq29Dvf2zTGV7OiAzO1g1mepNN
	uNcngAIjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeTM-0007gF-PX; Wed, 15 Apr 2020 09:36:44 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeTE-0007cv-6b
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 09:36:38 +0000
Received: by mail-lf1-x144.google.com with SMTP id x23so2122159lfq.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Apr 2020 02:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=YKI+hC0sNzrOHDQ6YYMHRSpactq//hlbIjvwLvDBX74=;
 b=axNTHOVZGI6jlptf4KyXVi11yMIKrTNdNv/WdRY9bDXXm/rzXdFlbypporooZ1LNie
 Hk5V2PmIl6h84ibTR038ezubDa9oNUGIViGMRKHZlY9GKs01pjCgM8q3eJmjmCpQ9Ea7
 ZhbnOLL60avp4HaPa09M6WVStZQA0vyrLPdX1pxmMMYixrbfJf1YPDlxseGTVhM0z2MQ
 4YCSfW91ahT3NVuGTz/7PGzcZ5Wy1RVYBshwdFuhy8TwGDbLBAf7WexHuXSAv1WQelRD
 DsjCdQkqidnHDTrdif5lzv6xuXaCx8KYUXW2Tf0vQRVCs9t+j03v4WC99Q/9CLycDmSS
 cCLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YKI+hC0sNzrOHDQ6YYMHRSpactq//hlbIjvwLvDBX74=;
 b=WEHHp+oAcInbD+ltqk6QItgjPBk5JjFvafFZnlIj1FYmte6apiHKcrxWJ4ZP5OKw2y
 xRsgw0dLZWj3d05YkqelU36QdSQwtkqXkmZ2926O11Oe043BQnlNjJMhLEuUppasxT1I
 +SkUvgZOSLG+v0P572C8ewuHDmI00erOrym4FtR2xrmzXKyOknKmOVHLO9zu6pzvCqnH
 TtZPS1Wo0rVpcSuWs46EzfhsukvOKzgcr5gCHr03BuyTmI4sM65+73bS1fU61P8+qO/G
 iHZCKGqeiBoMBXWW/j73tQTpX3lx/G7cYZje2YHqhNnUnnzmRuamOLbLY5R2SBEkCsgS
 FGkg==
X-Gm-Message-State: AGi0PuZHBARoPDyqkPDCkkag7UfZSxtqbwZ44DDMwMV0aU7rhCOmQslG
 X9b4G1mcYoJPnKQ9yLZ/hRKLwpuR
X-Google-Smtp-Source: APiQypJO9S2MUu3xgwpPgFmktqUHxWvpo3X/FAo7ibVO/wd6ccodSml9EAVrxZyixvbsEiopWhqTVg==
X-Received: by 2002:ac2:46ea:: with SMTP id q10mr2651272lfo.128.1586943388627; 
 Wed, 15 Apr 2020 02:36:28 -0700 (PDT)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id z9sm15642326lfd.9.2020.04.15.02.36.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 02:36:27 -0700 (PDT)
To: Tomasz Maciej Nowak <tomek_n@o2.pl>, "Li.zhang" <li.zhang@gl-inet.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1586773611-27431-1-git-send-email-li.zhang@gl-inet.com>
 <9433965b-4d40-9801-923a-29e64e8b7e47@o2.pl>
 <2020041412201325848550@gl-inet.com>
 <8463a316-49a3-02dd-b9d2-bc0c154d42e1@o2.pl>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <77568332-f637-4e9f-68d9-4bf31606b621@gmail.com>
Date: Wed, 15 Apr 2020 11:36:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <8463a316-49a3-02dd-b9d2-bc0c154d42e1@o2.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_023636_270718_0480B9A8 
X-CRM114-Status: GOOD (  32.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: add support for GL.iNet GL-MV1000
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

SGkgVG9tYXN6LCBMaSwKCk9uIDE0LjA0LjIwMjAgMjA6NTMsIFRvbWFzeiBNYWNpZWogTm93YWsg
d3JvdGU6Cj4gVyBkbml1IDE0LjA0LjIwMjAgb8KgMDY6MjAsIExpLnpoYW5nIHBpc3plOgo+PiBI
aSBUb21hc3osCj4+IFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdSBjb3JyZWN0aW9uLgo+PiAK
Pj4+ICt9Owo+Pj4gKwo+Pj4gKyZzcGkwIHsKPj4+ICsgICAgICAgIHN0YXR1cyA9ICJva2F5IjsK
Pj4+ICsKPj4+ICsgICAgICAgIGZsYXNoQDAgewo+Pj4gKyAgICAgICAgICAgICAgICByZWcgPSA8
MD47Cj4+PiArICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7Cj4+
PiArICAgICAgICAgICAgICAgIHNwaS1tYXgtZnJlcXVlbmN5ID0gPDEwNDAwMDAwMD47Cj4+PiAr
ICAgICAgICAgICAgICAgIG0yNXAsZmFzdC1yZWFkOwo+Pj4gKyAgICAgICAgICAgICAgICBwYXJ0
aXRpb25zIHsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZpeGVk
LXBhcnRpdGlvbnMiOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxz
ID0gPDE+Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDE+Owo+
Pj4gKwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgIHBhcnRpdGlvbkAwIHsKPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gInUtYm9vdCI7Cj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MCAweGYwMDAwPjsKPj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICB9Owo+Pj4gKwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgIHBh
cnRpdGlvbkBmMDAwMCB7Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJl
bCA9ICJ1LWJvb3QtZW52IjsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJl
ZyA9IDwwWGYwMDAwIDB4ODAwMD47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgfTsKPj4+
ICsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICBhcnQ6IHBhcnRpdGlvbkBmODAwMCB7Cj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJhcnQiOwo+PiAKPj4g
VGhlIG5hbWUgb2YgdGhpcyBwYXJ0aXRpb24gaXMgcmF0aGVyIHN0cmFuZ2UsIHNpbmNlIHRoZSBo
YXJkd2FyZQo+PiBzcGVjaWZpY2F0aW9uIGRvZXNuJ3QgbWVudGlvbiBhbnkgUENJZSBvciBTRElP
IGNvbm5lY3RlZCB3aXJlbGVzcwo+PiBjYXJkcyAoZG9uJ3Qga25vdyBpZiB0aGVyZSdzIGFueSBV
U0IgY2FyZCB3aXRob3V0IGVlcHJvbSkuIElzCj4+IHRoZXJlIGFueSBjYWxpYnJhdGlvbiBkYXRh
IHN0b3JlZCBvciBvbmx5IE1BQyBhZGRyZXNzL2FkZHJlc3Nlcz8KPj4gRG9lcyBVLUJvb3QgYWxz
byByZWFkIGluZm9ybWF0aW9uIGZyb20gdGhpcyBwYXJ0aXRpb24/IEFueXdheQo+PiB0aGF0J3Mg
bm90IGEgcmVtYXJrIHRvIGNoYW5nZSB0aGF0IG5hbWUsIEknbSBqdXN0IGN1cmlvdXMuCj4+IC0t
LT5NQUMsU04sREROUyBhbmQgdGhlciBwcml2YXRlIGluZm9ybWF0aW9uIGFyZSBzdG9yZWQgaW4g
dGhlIGFydC4KPiAKPiBPaywgc3RpbGwgdGhhdCBuYW1lIGlzIHdlaXJkLCBidXQgdGhhdCdzIG1h
dHRlciBvZiB0YXN0ZS4KCkFSVCBoYXMgYSBzcGVjaWZpYyBtZWFuaW5nIChBdGhlcm9zIFJhZGlv
IFRlc3QpIGFuZCBpdCBsb29rcyBqdXN0IHdyb25nIApoZXJlLCBub3QganVzdCB3ZWlyZC4KCldo
eSBub3QgY2hhbmdlIGl0IHRvIHNvbWV0aGluZyBsZXNzIG1pc2xlYWRpbmc/Ck1heWJlICdmYWN0
b3J5JyBvciAndmVuZG9yJz8KCi0tIApDaGVlcnMsClBpb3RyCgo+IAo+PiAKPj4gT24gcHJldmlv
dXMgcGF0Y2gsIHRoZXJlIHdlcmUgYWRkaXRpb25uYWwgcGFydGl0aW9ucyBpbiBkdHMKPj4gd2l0
aG91dCAtZW1tYyBzdWZmaXggOiBkdGIsIGZpcm13YXJlLiBJZiB0aGF0IHNwYWNlIHdvdWxkIGJl
Cj4+IHVudXNlZCBpdCdzIGJldHRlciB0byBhZGQgdGhlbSBoZXJlLCBzbyBsYXRlciBZb3UgY291
bGQKPj4gaW50cm9kdWNlIGltYWdlcyB0aGF0IGNvdWxkIGJlIHdyaXR0ZW4gaW4gU1BJIGZsYXNo
Lgo+PiAtLS0+VGhlcmUgaXMgYSBzaG9ydCBiYWNrdXAgZmlybXdhcmUgaW4gYWRkaXRpb25uYWwg
cGFydGl0aW9ucyBvZiBmbGFzaCxub3JtYWxseSBpdCdzIG5vdCB2aXNpYmxlLkluIGFkZGl0aW9u
IFRoZSBvZmZpY2FsIGZpcm13YXJlIGlzIHN0b3JlZCBpbiBFTU1DLFNvIHRoZSBwcmV2aW91cyBm
aWxlKGdsLW12MTAwMC5kdHMpIHdhcyBkZWxldGVkLgo+IAo+IFRoZW4gaXQgd291bGQgYmUgYmV0
dGVyIHRvIHNwZWNpZnkgdGhvc2UgcGFydGl0aW9ucywgYXMgc29tZSB1c2VycyBjb3VsZCBzaW1w
bHkKPiBvdmVyd3JpdGUgdGhpcyB0aGlua2luZyB0aGF0J3MgdW5vY2N1cGllZCBzcGFjZS4KPiAK
Pj4gCj4+PiArZGVmaW5lIERldmljZS9EZWZhdWx0LWFybTY0LWVtbWMKPj4gCj4+IFBsZWFzZSBk
b24ndCBhZGQgZ2VuZXJpYyBkaWZpbml0aW9uIGZvciBzaW5nbGUgZGV2aWNlIHdoZXJlIG9ubHkK
Pj4gaW1hZ2UgbmFtZSBhbmQgcmVjaXBlIGFyZSBzbGlnaHRseSBjaGFuZ2VkLCBwbGVhc2UgcmVt
b3ZlIGl0Lgo+PiAKPj4+ICsgIEJPT1RfU0NSSVBUIDo9IGdlbmVyaWMtYXJtNjQtZW1tYwo+Pj4g
KyAgREVWSUNFX0RUU19ESVIgOj0gJChEVFNfRElSKS9tYXJ2ZWxsCj4+PiArICBJTUFHRVMgOj0g
ZW1tYy5pbWcKPj4+ICsgIElNQUdFL2VtbWMuaW1nIDo9IGJvb3Qtc2NyIHwgYm9vdC1pbWctZXh0
NCB8IHNkY2FyZC1pbWctZXh0NCB8IGFwcGVuZC1tZXRhZGF0YQo+Pj4gKyAgS0VSTkVMX05BTUUg
Oj0gSW1hZ2UKPj4+ICsgIEtFUk5FTCA6PSBrZXJuZWwtYmluCj4+PiArZW5kZWYKPj4+ICsKPj4+
ICBkZWZpbmUgRGV2aWNlL05BTkQtMTI4Swo+Pj4gICAgQkxPQ0tTSVpFIDo9IDEyOGsKPj4+ICAg
IFBBR0VTSVpFIDo9IDIwNDgKPj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvaW1h
Z2UvY29ydGV4YTUzLm1rIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE1My5tawo+
Pj4gaW5kZXggNzdmNWM3OS4uNGRmZDBiNCAxMDA2NDQKPj4+IC0tLSBhL3RhcmdldC9saW51eC9t
dmVidS9pbWFnZS9jb3J0ZXhhNTMubWsKPj4+ICsrKyBiL3RhcmdldC9saW51eC9tdmVidS9pbWFn
ZS9jb3J0ZXhhNTMubWsKPj4+IEBAIC02OSwzICs2OSwxMiBAQCBkZWZpbmUgRGV2aWNlL21ldGhv
ZGVfdWRwdQo+Pj4gICAgQk9PVF9TQ1JJUFQgOj0gdWRwdQo+Pj4gIGVuZGVmCj4+PiAgVEFSR0VU
X0RFVklDRVMgKz0gbWV0aG9kZV91ZHB1Cj4+PiArCj4+PiArZGVmaW5lIERldmljZS9nbGluZXRf
Z2wtbXYxMDAwLWVtbWMKPj4+ICsgICQoY2FsbCBEZXZpY2UvRGVmYXVsdC1hcm02NC1lbW1jKQo+
PiAKPj4gUGxlYXNlIGNhbGwgIkRlZmF1bHQtYXJtNjQiIGhlcmUuIFlvdSBjYW4gb3ZlcnJpZGUg
aW1hZ2UgcmVjaXBlCj4+IGhlcmUgYWRkaW5nIChkb24ndCBrbm93IGlmIHRoYXQnbGwgYmUgbmVj
ZXNzYXJ5KToKPj4gLS0tPjEsSXQgaXMgdXNlZCB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuIHNkIGNh
cmQgYW5kIGVtbWMuU28gSXQgY2FuIGxldCB1c2VycyBiZXR0ZXIgcmVjb25naW56ZSB0aGF0IGl0
IGNhbiBiZSBhcHBsaWVkIHRvIEVNTUMgcmF0aGVyIHRoYW4ganVzdCBzZCBjYXJkLgo+IAo+IEJ1
dCB3aXRoIHRoaXMgcGF0Y2gsIHRoZSBpbWFnZSBoYXMgaW4gbmFtZSAiZW1tYyIgb25seSwgaG93
IHdvdWxkIHVzZXJzIGtub3cgdGhhdAo+IHRoZXkgY2FuIHVzZSBpdCBmb3IgU0QgY2FyZD8gSWYg
Ym90aCBpbWFnZXMgYXJlIGludGVyY2hhbmdhYmxlIFlvdSBoYXZlIHRvIGV4dGVuZAo+IGNvbW1p
dCBtZXNzYWdlIHdpdGggaW5zdHVjdGlvbnMsIHRoYXQgc2luZ2xlIGltYWdlIGNhbiBiZSB1c2Vk
IG9uIGJvdGggbWVkaXVtcwo+IGFuZCBob3cgdG8gdXNlIHRoZW0gKHRoZSBTRCBjYXJkIGlzIHJh
dGhlciBvYnZpb3VzLCBidXQgbW9yZSBleHBsYW5hdGlvbiBpcwo+IG5lZWRlZCBmb3IgdGhlIGVN
TUMpLgo+IENydWNpYWwgcXVlc3Rpb24gaXMgbGVmdCB1bmFuc3dlcmVkOiBEb2VzIHRoZSBVLUJv
b3QgYnkgZGVmYXVsdCBib290IE9wZW5XcnQgZnJvbQo+IGVNTUMgb25seSBvciBlTU1DIGFuZCBT
RCBjYXJkPyBBbmQgaWYgYm9vdCBmcm9tIGJvdGgsIHdoaWNoIGlzIGJvb3RlZCBmaXJzdD8KPiAK
Pj4gLS0tPjIsQ3VycmVudGx5LFRoZSB1Ym9vdCBkb2VzIG5vdCBzdXBwb3J0ICdmaXJtd2FyZS1n
emlwJyB1cGdyYWRlcyAuU28gaXQgY2FuIG5vdCByZWNvdmVyIHN5c3RlbSB2aWEgdWJvb3QsIHdo
ZW4gdGhlIHVzZXIncyBFTU1DIGZpcm13YXJlIGZhaWxzIHRvIGJvb3QuCj4gCj4gT2suCj4gCj4+
IC0tLT4zLENvdWxkIGkgY3JlYXRlIGFub3RoZXIgZmlsZShnbC1tdjEwMDAubWspIHRvIGluY2x1
ZGUgJ0RlZmF1bHQtYXJtNjQtZW1tYyc/Cj4gCj4gTm8sIHBsZWFzZSBkb24ndC4gWW91IGNhbiBh
bHdheXMgb3ZlcnJpZGUgSU1BR0VTIHZhcmlhYmxlIGFuZCBhZGQgbXVsdGlwbGUgSU1BR0UgcmVj
aXBlcyBpbiBkZXZpY2UKPiBkZWZpbml0aW9uLCB0aGVyZSBpcyBubyByZWFzb24gdG8gYWRkIGEg
Y29tbW9uIHN0dWIgdXNlZCBPTkxZIGJ5IG9uZSBkZXZpY2UuCj4gCj4+IAo+PiAKPj4gVGhhbmsg
eW91IQo+PiAKPj4gCj4+IExpIFpoYW5nIHwgU29mdHdhcmUgRW5naW5lZXIKPj4gbGkuemhhbmdA
Z2wtaW5ldC5jb20gCj4+IEdMLmlOZXQgIFdpRmkgZm9yIFRoaW5ncwo+PiBXZWJzaXRlOiB3d3cu
Z2wtaW5ldC5jb20gICB8ICAgTGlua2VkSW46IGdsLWluZXQuY29tICAgfCAgIFRlbDogKzg2LTc1
NS04NjYwLTYxMjYKPj4gUm9vbSAzMDUtMzA2LCBTa3l3b3J0aCBEaWdpdGFsIEJ1aWxkaW5nICwg
U2hpeWFuIFN0cmVldCwgQmFvYW4gRGlzdHJpY3QsIFNoZW56aGVuLCBDaGluYQo+PiBFbWFpbCBE
aXNjbGFpbWVyOiBUaGUgY29udGVudCBvZiB0aGlzIGVtYWlsIGlzIGNvbmZpZGVudGlhbCBhbmQg
aW50ZW5kZWQgZm9yIHRoZSByZWNpcGllbnQgc3BlY2lmaWVkIGluIG1lc3NhZ2Ugb25seS4gSXQg
aXMgc3RyaWN0bHkgZm9yYmlkZGVuIHRvIHNoYXJlIGFueSBwYXJ0IG9mIHRoaXMgbWVzc2FnZSB3
aXRoIGFueSB0aGlyZCBwYXJ0eSwgd2l0aG91dCBhIHdyaXR0ZW4gY29uc2VudCBvZiB0aGUgc2Vu
ZGVyLiBJZiB5b3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJ5IG1pc3Rha2UsIHBsZWFzZSByZXBs
eSB0byB0aGlzIG1lc3NhZ2UgYW5kIGZvbGxvdyB3aXRoIGl0cyBkZWxldGlvbiwgc28gdGhhdCB3
ZSBjYW4gZW5zdXJlIHN1Y2ggYSBtaXN0YWtlIGRvZXMgbm90IG9jY3VyIGluIHRoZSBmdXR1cmUu
Cj4+ICAKPj4gRnJvbTogVG9tYXN6IE1hY2llaiBOb3dhawo+PiBEYXRlOiAyMDIwLTA0LTE0IDA0
OjE0Cj4+IFRvOiBMaSBaaGFuZzsgb3BlbndydC1kZXZlbAo+PiBTdWJqZWN0OiBSZTogW09wZW5X
cnQtRGV2ZWxdIFtQQVRDSF0gbXZlYnU6IGFkZCBzdXBwb3J0IGZvciBHTC5pTmV0IEdMLU1WMTAw
MAo+PiBIaSBMaSBaaGFuZy4KPj4gIAo+PiBUaGlzIHZlcnNpb24gbG9va3MgbXVjaCBiZXR0ZXIg
dGhhbiB0aGUgZmlyc3Qgb25lLAo+PiBzb21lIGNvbW1lbnRzIGlubGluZS4KPj4gIAo+PiBXIGRu
aXUgMTMuMDQuMjAyMCBvIDEyOjI2LCBMaSBaaGFuZyBwaXN6ZToKPj4+IFRoaXMgcGF0Y2ggYWRk
cyBzdXBwb3J0cyBmb3IgR0wtTVYxMDAwLgo+Pj4KPj4+IFNwZWNpZmljYXRpb246Cj4+PiAtIFNP
QzogTWFydmVsbCBBcm1hZGEgODhGMzcyMCAoMUdIeikKPj4+IC0gRmxhc2g6IDE2TUIgKFcyNVEx
MjhGV1NJRykKPj4+IC0gUkFNOiAxR0IgRERSNAo+Pj4gLSBFdGhlcm5ldDogM3ggR0UgKDEgV0FO
ICsgMiBMQU4pCj4+PiAtIEVNTUM6IDhHQiBFTU1DIChLTE04RzFHRVRGLUIwNDEpCj4+PiAtIE1p
Y3JvU0Q6IDF4IG1pY3JvU0Qgc2xvdAo+Pj4gLSBVU0I6IDF4IFVTQiAyLjAgcG9ydChUeXBlQSks
MXggVVNCIDMuMCBwb3J0KFR5cGVDKQo+Pj4gLSBCdXR0b246IDF4IHJlc2V0IGJ1dHRvbiwxeCBz
bGlkZSBzd2l0Y2gKPj4+IC0gTEVEOiAzeCBncmVlZCBMRUQKPj4+IC0gVUFSVDogMXggVUFSVCBv
biBQQ0IgKEpQMTogMy4zViwgUlgsIFRYLCBHTkQpCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTGkg
WmhhbmcgPGxpLnpoYW5nQGdsLWluZXQuY29tPgo+Pj4gLS0tCj4+PiAgcGFja2FnZS9ib290L3Vi
b290LWVudnRvb2xzL2ZpbGVzL212ZWJ1ICAgICAgICAgICAgfCAgMyArCj4+PiAgLi4uL2NvcnRl
eGE1My9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsgICAgfCAgMyArLQo+Pj4gIC4u
Li9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS1nbC1tdjEwMDAtZW1tYy5kdHMgICAgIHwgNjggKysr
KysrKysrKysrKysrKysrKysrKwo+Pj4gIHRhcmdldC9saW51eC9tdmVidS9pbWFnZS9NYWtlZmls
ZSAgICAgICAgICAgICAgICAgIHwgIDkgKysrCj4+PiAgdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdl
L2NvcnRleGE1My5tayAgICAgICAgICAgICAgfCAgOSArKysKPj4+ICB0YXJnZXQvbGludXgvbXZl
YnUvaW1hZ2UvZ2VuX212ZWJ1X3NkY2FyZF9pbWcuc2ggICB8ICA2ICsrCj4+PiAgLi4uL212ZWJ1
L2ltYWdlL2dlbmVyaWMtYXJtNjQtZW1tYy5ib290c2NyaXB0ICAgICAgfCAxMiArKysrCj4+PiAg
NyBmaWxlcyBjaGFuZ2VkLCAxMDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvZmlsZXMtNC4xOS9hcmNoL2FybTY0
L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWdsLW12MTAwMC1lbW1jLmR0cwo+Pj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvZ2VuZXJpYy1hcm02NC1lbW1jLmJv
b3RzY3JpcHQKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9ib290L3Vib290LWVudnRvb2xz
L2ZpbGVzL212ZWJ1IGIvcGFja2FnZS9ib290L3Vib290LWVudnRvb2xzL2ZpbGVzL212ZWJ1Cj4+
PiBpbmRleCA3OTAyMzg0Li45ZDIzYzc3IDEwMDY0NAo+Pj4gLS0tIGEvcGFja2FnZS9ib290L3Vi
b290LWVudnRvb2xzL2ZpbGVzL212ZWJ1Cj4+PiArKysgYi9wYWNrYWdlL2Jvb3QvdWJvb3QtZW52
dG9vbHMvZmlsZXMvbXZlYnUKPj4+IEBAIC0yNCw2ICsyNCw5IEBAIGdsb2JhbHNjYWxlLGVzcHJl
c3NvYmluLXY3LWVtbWN8XAo+Pj4gIG1hcnZlbGwsYXJtYWRhODA0MC1tY2JpbikKPj4+ICB1Ym9v
dGVudl9hZGRfdWNpX2NvbmZpZyAiL2Rldi9tdGQwIiAiMHgzZjAwMDAiICIweDEwMDAwIiAiMHgx
MDAwMCIgIjEiCj4+PiAgOzsKPj4+ICtnbGluZXQsZ2wtbXYxMDAwLWVtbWMpCj4+PiArIHVib290
ZW52X2FkZF91Y2lfY29uZmlnICIvZGV2L210ZDEiICIweDAiICIweDgwMDAiICIweDgwMDAiICIx
Igo+Pj4gKyA7Owo+Pj4gIGxpbmtzeXMsY2FpbWFufFwKPj4+ICBsaW5rc3lzLGNvYnJhfFwKPj4+
ICBsaW5rc3lzLHNoZWxieSkKPj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvY29y
dGV4YTUzL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayBiL3RhcmdldC9saW51eC9t
dmVidS9jb3J0ZXhhNTMvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCj4+PiBpbmRl
eCBiYTRiOTMwLi5lNWZmNjY3IDEwMDc1NQo+Pj4gLS0tIGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2Nv
cnRleGE1My9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKPj4+ICsrKyBiL3Rhcmdl
dC9saW51eC9tdmVidS9jb3J0ZXhhNTMvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3Jr
Cj4+PiBAQCAtMTQsNyArMTQsOCBAQCBjYXNlICIkYm9hcmQiIGluCj4+PiAgZ2xvYmFsc2NhbGUs
ZXNwcmVzc29iaW58XAo+Pj4gIGdsb2JhbHNjYWxlLGVzcHJlc3NvYmluLWVtbWN8XAo+Pj4gIGds
b2JhbHNjYWxlLGVzcHJlc3NvYmluLXY3fFwKPj4+IC1nbG9iYWxzY2FsZSxlc3ByZXNzb2Jpbi12
Ny1lbW1jKQo+Pj4gK2dsb2JhbHNjYWxlLGVzcHJlc3NvYmluLXY3LWVtbWN8XAo+Pj4gK2dsaW5l
dCxnbC1tdjEwMDAtZW1tYykKPj4+ICB1Y2lkZWZfc2V0X2ludGVyZmFjZXNfbGFuX3dhbiAibGFu
MCBsYW4xIiAid2FuIgo+Pj4gIDs7Cj4+PiAgbWFydmVsbCxhcm1hZGEtMzcyMC1kYnxcCj4+PiBk
aWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTkvYXJjaC9hcm02NC9ib290
L2R0cy9tYXJ2ZWxsL2FybWFkYS1nbC1tdjEwMDAtZW1tYy5kdHMgYi90YXJnZXQvbGludXgvbXZl
YnUvZmlsZXMtNC4xOS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLWdsLW12MTAw
MC1lbW1jLmR0cwo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAuLmZl
MDFkZmUKPj4+IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL3RhcmdldC9saW51eC9tdmVidS9maWxl
cy00LjE5L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtZ2wtbXYxMDAwLWVtbWMu
ZHRzCj4+PiBAQCAtMCwwICsxLDY4IEBACj4+ICAKPj4gUGxlYXNlIGFkZCBhIGxpY2Vuc2UgaW4g
U1BEWCBmb3JtYXQsIGEgY29tbW9uIG9uZSBpcyBkdWFsIE1JVCBhbmQKPj4gR1BMLTIuMCsuCj4+
ICAKPj4+ICsvKgo+Pj4gKyAqIERldmljZSBUcmVlIGZpbGUgZm9yIEdMLmlOZXQgR0wtTVYxMDAw
Cj4+PiArICovCj4+PiArCj4+PiArI2luY2x1ZGUgImFybWFkYS0zNzIwLWVzcHJlc3NvYmluLmR0
cyIKPj4gIAo+PiBUaGlzIGlzIGRpZmZlcmVudCBkZXZpY2UgZnJvbSBFU1BSRVNTT2JpbiBhbHRv
Z2V0aGVyLCBwbGVhc2UgbWFrZSBpdAo+PiBzdGFuZC1hbG9uZSBkdHMgKGNvcHkgZXNwcmVzc29i
aW4gZHRzLCBhZGQgcmVxdWlyZWQgbm9kZXMgYW5kCj4+IHJlbW92ZS9kaXNhYmxlIG5vZGVzIGZv
ciBkZXZpY2VzIG5vdCBwcmVzZW50IG9uIHRoZSBHTC1NVjEwMDApLgo+PiBXb3VsZCBiZSBnb29k
IHRvIGFkZCBhbGwgTEVEcyBhbmQgYnV0dG9ucyBhcyBub2Rlcywgd2hpY2ggc2VlbSB0byBiZQo+
PiBHUElPIGNvbnRyb2xsZWQgYXMgaW4gdGhpcyBwaWN0dXJlOgo+PiBodHRwczovL3N0YXRpYy5n
bC1pbmV0LmNvbS9kb2NzL2VuLzMvaGFyZHdhcmUvbXYxMDAwL212MTAwMC5wbmcKPj4gYnV0IHRo
YXQncyBub3QgbWFuZGF0b3J5Lgo+PiAgCj4+PiArCj4+PiArLyB7Cj4+PiArICAgICAgIG1vZGVs
ID0gIkdMLmluZXQgR0wtTVYxMDAwIChNYXJ2ZWxsKSI7Cj4+ICAKPj4gSW5zdGVhZCBvZiBNYXJ2
ZWxsIG1vcmUgYXByb3ByaWF0ZSB3b3VsZCBiZSBCcnVtZSwgc2luY2UgdGhpcyBpcyB1c2VkCj4+
IG9uIFlvdXIgd2Vic2l0ZS4KPj4gIAo+Pj4gKyAgICAgICBjb21wYXRpYmxlID0gImdsaW5ldCxn
bC1tdjEwMDAtZW1tYyI7Cj4+ICAKPj4gQWRkIGhlcmUgdG8gY29tcGF0aWJsZSBhcnJheSBpbiBz
ZWNvbmQgcGxhY2UgIm1hcnZlbGwsYXJtYWRhMzcyMCIuCj4+IEFyZSB0aGVyZSBhbnkgYm9hcmRz
IGluIGN1dG9tZXJzIGhhbmRzIHdoaWNoIGRvIG5vdCBoYXZlIFNEIGNhcmQgc2xvdAo+PiBvciBl
TU1DIHNvbGRlcmVkPyBUaGVyZSBpcyBubyBwb2ludCBpbiBpbmRpY2F0aW5nIHRoZSBlTU1DIHBy
ZXNlbmNlCj4+IHdoZW4gYWxsIHNvbGQgYm9hcmRzIGFyZSB0aGUgc2FtZS4gSW4gY2FzZSBvZiBF
U1BSRVNTT2JpbiBpdCdzIHRoZXJlCj4+IGJlY2F1c2UgdmFyaW91cyBoYXJkd2FyZSB2ZXJzaW9u
cy4gU28gcGxlYXNlIHJlbW92ZSBhbGwgLWVtbWMgc3VmZml4ZXMKPj4gZnJvbSBmaWxlcyBhbmQg
ZmlsZSBuYW1lcyBhY3Jvc3MgdGhpcyBwYXRjaCBpZiB0aGF0J3MgdGhlIGNhc2UuIE9uZQo+PiBl
eGVwdGlvbiB3b3VsZCBiZSBpZiBVLUJvb3Qgc2VhcmNoZXMgZm9yIGV4Y3RseSB0aGlzIG5hbWUK
Pj4gKGFybWFkYS1nbC1tdjEwMDAtZW1tYy5kdHMpIHdoZW4gYm9vdGluZywgYnV0IGxvb2tpbmcg
YXQgdGhlIHVzYWdlIG9mCj4+IGJvb3Quc2NyIHRoYXQncyBub3QgdGhlIGNhc2UuCj4+ICAKPj4+
ICt9Owo+Pj4gKwo+Pj4gKyZzcGkwIHsKPj4+ICsgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4+
ICsKPj4+ICsgICAgICAgIGZsYXNoQDAgewo+Pj4gKyAgICAgICAgICAgICAgICByZWcgPSA8MD47
Cj4+PiArICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7Cj4+PiAr
ICAgICAgICAgICAgICAgIHNwaS1tYXgtZnJlcXVlbmN5ID0gPDEwNDAwMDAwMD47Cj4+PiArICAg
ICAgICAgICAgICAgIG0yNXAsZmFzdC1yZWFkOwo+Pj4gKyAgICAgICAgICAgICAgICBwYXJ0aXRp
b25zIHsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZpeGVkLXBh
cnRpdGlvbnMiOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDE+Owo+Pj4g
Kwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgIHBhcnRpdGlvbkAwIHsKPj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gInUtYm9vdCI7Cj4+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MCAweGYwMDAwPjsKPj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICB9Owo+Pj4gKwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgIHBhcnRp
dGlvbkBmMDAwMCB7Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9
ICJ1LWJvb3QtZW52IjsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9
IDwwWGYwMDAwIDB4ODAwMD47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgfTsKPj4+ICsK
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICBhcnQ6IHBhcnRpdGlvbkBmODAwMCB7Cj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJhcnQiOwo+PiAgCj4+IFRo
ZSBuYW1lIG9mIHRoaXMgcGFydGl0aW9uIGlzIHJhdGhlciBzdHJhbmdlLCBzaW5jZSB0aGUgaGFy
ZHdhcmUKPj4gc3BlY2lmaWNhdGlvbiBkb2Vzbid0IG1lbnRpb24gYW55IFBDSWUgb3IgU0RJTyBj
b25uZWN0ZWQgd2lyZWxlc3MKPj4gY2FyZHMgKGRvbid0IGtub3cgaWYgdGhlcmUncyBhbnkgVVNC
IGNhcmQgd2l0aG91dCBlZXByb20pLiBJcwo+PiB0aGVyZSBhbnkgY2FsaWJyYXRpb24gZGF0YSBz
dG9yZWQgb3Igb25seSBNQUMgYWRkcmVzcy9hZGRyZXNzZXM/Cj4+IERvZXMgVS1Cb290IGFsc28g
cmVhZCBpbmZvcm1hdGlvbiBmcm9tIHRoaXMgcGFydGl0aW9uPyBBbnl3YXkKPj4gdGhhdCdzIG5v
dCBhIHJlbWFyayB0byBjaGFuZ2UgdGhhdCBuYW1lLCBJJ20ganVzdCBjdXJpb3VzLgo+PiAgCj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHhmODAwMCAweDgwMDA+
Owo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICAKPj4gT24gcHJldmlvdXMgcGF0
Y2gsIHRoZXJlIHdlcmUgYWRkaXRpb25uYWwgcGFydGl0aW9ucyBpbiBkdHMKPj4gd2l0aG91dCAt
ZW1tYyBzdWZmaXggOiBkdGIsIGZpcm13YXJlLiBJZiB0aGF0IHNwYWNlIHdvdWxkIGJlCj4+IHVu
dXNlZCBpdCdzIGJldHRlciB0byBhZGQgdGhlbSBoZXJlLCBzbyBsYXRlciBZb3UgY291bGQKPj4g
aW50cm9kdWNlIGltYWdlcyB0aGF0IGNvdWxkIGJlIHdyaXR0ZW4gaW4gU1BJIGZsYXNoLgo+PiAg
Cj4+PiArCj4+PiArICAgICAgICAgICAgICAgfTsKPj4+ICsgICAgICAgIH07Cj4+PiArfTsKPj4+
ICsKPj4+ICsmc2RoY2kxIHsKPj4+ICsgICAgICAgIHdwLWludmVydGVkOwo+Pj4gKyAgICAgICAg
YnVzLXdpZHRoID0gPDQ+Owo+Pj4gKyAgICAgICAgY2QtZ3Bpb3MgPSA8JmdwaW9uYiAxNyBHUElP
X0FDVElWRV9MT1c+Owo+Pj4gKyAgICAgICAgbWFydmVsbCxwYWQtdHlwZSA9ICJzZCI7Cj4+PiAr
ICAgICAgICBuby0xLTgtdjsKPj4+ICsgICAgICAgIHZxbW1jLXN1cHBseSA9IDwmdmNjX3NkX3Jl
ZzE+Owo+Pj4gKyAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4gK307Cj4+PiArCj4+PiArCj4+
PiArJnNkaGNpMCB7Cj4+PiArICAgICAgICBidXMtd2lkdGggPSA8OD47Cj4+PiArICAgICAgICBt
bWMtZGRyLTFfOHY7Cj4+PiArICAgICAgICBtbWMtaHM0MDAtMV84djsKPj4+ICsgICAgICAgIG5v
bi1yZW1vdmFibGU7Cj4+PiArICAgICAgICBuby1zZDsKPj4+ICsgICAgICAgIG5vLXNkaW87Cj4+
PiArICAgICAgICBtYXJ2ZWxsLHBhZC10eXBlID0gImZpeGVkLTEtOHYiOwo+Pj4gKyAgICAgICAg
c3RhdHVzID0gIm9rYXkiOwo+Pj4gK307Cj4+PiArCj4+PiArJmV0aDAgewo+Pj4gKyBtdGQtbWFj
LWFkZHJlc3MgPSA8JmFydCAweDA+Owo+Pj4gK307Cj4+PiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xp
bnV4L212ZWJ1L2ltYWdlL01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL01ha2Vm
aWxlCj4+PiBpbmRleCBlZjkyNzQ4Li5iODQ4MDQ5IDEwMDY0NAo+Pj4gLS0tIGEvdGFyZ2V0L2xp
bnV4L212ZWJ1L2ltYWdlL01ha2VmaWxlCj4+PiArKysgYi90YXJnZXQvbGludXgvbXZlYnUvaW1h
Z2UvTWFrZWZpbGUKPj4+IEBAIC0xMDcsNiArMTA3LDE1IEBAIGRlZmluZSBEZXZpY2UvRGVmYXVs
dC1hcm02NAo+Pj4gICAgS0VSTkVMIDo9IGtlcm5lbC1iaW4KPj4+ICBlbmRlZgo+Pj4gIAo+Pj4g
K2RlZmluZSBEZXZpY2UvRGVmYXVsdC1hcm02NC1lbW1jCj4+ICAKPj4gUGxlYXNlIGRvbid0IGFk
ZCBnZW5lcmljIGRpZmluaXRpb24gZm9yIHNpbmdsZSBkZXZpY2Ugd2hlcmUgb25seQo+PiBpbWFn
ZSBuYW1lIGFuZCByZWNpcGUgYXJlIHNsaWdodGx5IGNoYW5nZWQsIHBsZWFzZSByZW1vdmUgaXQu
Cj4+ICAKPj4+ICsgIEJPT1RfU0NSSVBUIDo9IGdlbmVyaWMtYXJtNjQtZW1tYwo+Pj4gKyAgREVW
SUNFX0RUU19ESVIgOj0gJChEVFNfRElSKS9tYXJ2ZWxsCj4+PiArICBJTUFHRVMgOj0gZW1tYy5p
bWcKPj4+ICsgIElNQUdFL2VtbWMuaW1nIDo9IGJvb3Qtc2NyIHwgYm9vdC1pbWctZXh0NCB8IHNk
Y2FyZC1pbWctZXh0NCB8IGFwcGVuZC1tZXRhZGF0YQo+Pj4gKyAgS0VSTkVMX05BTUUgOj0gSW1h
Z2UKPj4+ICsgIEtFUk5FTCA6PSBrZXJuZWwtYmluCj4+PiArZW5kZWYKPj4+ICsKPj4+ICBkZWZp
bmUgRGV2aWNlL05BTkQtMTI4Swo+Pj4gICAgQkxPQ0tTSVpFIDo9IDEyOGsKPj4+ICAgIFBBR0VT
SVpFIDo9IDIwNDgKPj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvY29y
dGV4YTUzLm1rIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleGE1My5tawo+Pj4gaW5k
ZXggNzdmNWM3OS4uNGRmZDBiNCAxMDA2NDQKPj4+IC0tLSBhL3RhcmdldC9saW51eC9tdmVidS9p
bWFnZS9jb3J0ZXhhNTMubWsKPj4+ICsrKyBiL3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9jb3J0
ZXhhNTMubWsKPj4+IEBAIC02OSwzICs2OSwxMiBAQCBkZWZpbmUgRGV2aWNlL21ldGhvZGVfdWRw
dQo+Pj4gICAgQk9PVF9TQ1JJUFQgOj0gdWRwdQo+Pj4gIGVuZGVmCj4+PiAgVEFSR0VUX0RFVklD
RVMgKz0gbWV0aG9kZV91ZHB1Cj4+PiArCj4+PiArZGVmaW5lIERldmljZS9nbGluZXRfZ2wtbXYx
MDAwLWVtbWMKPj4+ICsgICQoY2FsbCBEZXZpY2UvRGVmYXVsdC1hcm02NC1lbW1jKQo+PiAgCj4+
IFBsZWFzZSBjYWxsICJEZWZhdWx0LWFybTY0IiBoZXJlLiBZb3UgY2FuIG92ZXJyaWRlIGltYWdl
IHJlY2lwZQo+PiBoZXJlIGFkZGluZyAoZG9uJ3Qga25vdyBpZiB0aGF0J2xsIGJlIG5lY2Vzc2Fy
eSk6Cj4+IEJPT1RfU0NSSVBUIDo9IGdlbmVyaWMtYXJtNjQtZW1tYwo+PiBJTUFHRVMgOj0gZW1t
Yy5pbWcKPj4gSU1BR0UvZW1tYy5pbWcgOj0gYm9vdC1zY3IgfCBib290LWltZy1leHQ0IHwgc2Rj
YXJkLWltZy1leHQ0IHwgYXBwZW5kLW1ldGFkYXRhCj4+ICAKPj4+ICsgIERFVklDRV9USVRMRSA6
PSBHTC5pTmV0IEdMLU1WMTAwMCBFTU1DCj4+PiArICBERVZJQ0VfRFRTIDo9IGFybWFkYS1nbC1t
djEwMDAtZW1tYwo+Pj4gKyAgU1VQUE9SVEVEX0RFVklDRVMgOj0gZ2xpbmV0LGdsLW12MTAwMC1l
bW1jCj4+PiArZW5kZWYKPj4+ICtUQVJHRVRfREVWSUNFUyArPSBnbGluZXRfZ2wtbXYxMDAwLWVt
bWMKPj4+ICsKPj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvZ2VuX212
ZWJ1X3NkY2FyZF9pbWcuc2ggYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvZ2VuX212ZWJ1X3Nk
Y2FyZF9pbWcuc2gKPj4+IGluZGV4IDg0MmU1OTEuLjUwMDI4ZmUgMTAwNzU1Cj4+PiAtLS0gYS90
YXJnZXQvbGludXgvbXZlYnUvaW1hZ2UvZ2VuX212ZWJ1X3NkY2FyZF9pbWcuc2gKPj4+ICsrKyBi
L3RhcmdldC9saW51eC9tdmVidS9pbWFnZS9nZW5fbXZlYnVfc2RjYXJkX2ltZy5zaAo+Pj4gQEAg
LTUxLDYgKzUxLDEyIEBAIHdoaWxlIFsgIiQjIiAtZ2UgMyBdOyBkbwo+Pj4gIHNoaWZ0OyBzaGlm
dDsgc2hpZnQKPj4+ICBkb25lCj4+PiAgCj4+PiArbW9kZWw9JycKPj4+ICttb2RlbD0kKGVjaG8g
JE9VVEZJTEUgfCBncmVwICJnbC1tdjEwMDAtZW1tYyIpCj4+PiArWyAiJG1vZGVsIiAhPSAiIiBd
ICYmIHsKPj4+ICsgcHRnZW5fYXJncz0iJHB0Z2VuX2FyZ3MgLXQgODMgLXAgNzA5MzUwNCIKPj4g
IAo+PiBQbGVhc2UgZG9uJ3QgYWRkIGRldmljZSBoYWNrcyBoZXJlIGl0J3MgbWVudCB0byBiZSBh
cyBnZW5lcmljCj4+IGFzIHBvc2libGUuIEluc3RlYWQsIGFkZCBwb3NzaWJpbGl0eSB0byBvdmVy
cmlkZSBDT05GSUdfVEFSR0VUX1JPT1RGU19QQVJUU0laRQo+PiBhcyBwYXJhbWV0ZXIgdG8gImJv
b3QtaW1nLWV4dDQiIGNvbW1hbmQuCj4+ICAKPj4+ICt9Cj4+PiArCj4+PiAgaGVhZD0xNgo+Pj4g
IHNlY3Q9NjMKPj4+ICAKPj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2Uv
Z2VuZXJpYy1hcm02NC1lbW1jLmJvb3RzY3JpcHQgYi90YXJnZXQvbGludXgvbXZlYnUvaW1hZ2Uv
Z2VuZXJpYy1hcm02NC1lbW1jLmJvb3RzY3JpcHQKPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+
PiBpbmRleCAwMDAwMDAwLi40ZGU0ZDM5Cj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysgYi90YXJn
ZXQvbGludXgvbXZlYnUvaW1hZ2UvZ2VuZXJpYy1hcm02NC1lbW1jLmJvb3RzY3JpcHQKPj4+IEBA
IC0wLDAgKzEsMTIgQEAKPj4+ICtzZXRlbnYgYm9vdGFyZ3MgInJvb3Q9L2Rldi9tbWNibGswcDIg
cncgcm9vdHdhaXQiCj4+PiArCj4+PiAraWYgdGVzdCAtbiAiJHtjb25zb2xlfSI7IHRoZW4KPj4+
ICsgc2V0ZW52IGJvb3RhcmdzICIke2Jvb3RhcmdzfSAke2NvbnNvbGV9Igo+Pj4gK2ZpCj4+PiAr
Cj4+PiArc2V0ZW52IG1tY2RldiAwCj4+ICAKPj4gRG9lcyB0aGUgVS1Cb290IG9ubHkgbG9hZCAi
Ym9vdC5zY3IiIGZyb20gZmlyc3QgbW1jZGV2Cj4+IChJIGFzc3VtZSB0aGF0J3MgZU1NQykgb3Ig
YWxzbyBzZWFyY2hlcyBmb3IgaXQgb24gU0QgY2FyZD8gSWYKPj4gc2VhcmNoZWQgb24gYm90aCBk
ZXZpY2VzLCB0aGVyZSdzIG5vIG5lZWQgdG8gYWRkIHRoaXMgZmlsZSwgdXNlCj4+IGdlbmVyaWMt
YXJtNjQuYm9vdHNjcmlwdC4gVGhhdCB3YXkgaW1hZ2Ugd2lsbCBiZSBhcHBsaWNhYmxlIHRvCj4+
IGJvdGggc3RvcmFnZSBtZWRpdW1zLCBqdXN0IHdyaXRlIHRoaXMgaW5mb3JtYXRpb24gaW4gY29t
bWl0Cj4+IG1lc3NhZ2UgdG8gaW5mb3JtIHVzZXJzLiBJZiBVLUJvb3Qgc2VhcmNoZXMgZm9yICJi
b290LnNjciIgb25seQo+PiBvbiBlTU1DLCB0aGVuIHJlbmFtZSB0aGlzIGZpbGUgdG8gZ2wtbXYx
MDAwLmJvb3RzY3JpcHQgYW5kIHNldAo+PiBpdCBpbiBCT09UX1NDUklQVCB2YXJpYWJsZS4KPj4+
ICsKPj4+ICtsb2FkIG1tYyAke21tY2Rldn06MSAke2ZkdF9hZGRyfSBARFRCQC5kdGIKPj4+ICts
b2FkIG1tYyAke21tY2Rldn06MSAke2tlcm5lbF9hZGRyfSBJbWFnZQo+Pj4gKwo+Pj4gK2Jvb3Rp
ICR7a2VybmVsX2FkZHJ9IC0gJHtmZHRfYWRkcn0KPj4+Cj4+ICAKPj4gUmVnYXJkcywgVG9tYXN6
Cj4+IAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
