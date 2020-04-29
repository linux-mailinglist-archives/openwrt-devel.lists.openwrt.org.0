Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2868E1BD50F
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 08:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/ZAYP9GaAiY9lFxNVlWD1NjSKzo/WekguWRBr6cYCaE=; b=hEHRuKhjdz2vNYqhryGEcGSQ/
	Gu//Kus1bPDhlNtuS3I1Evu6vyADL6L5xO+WfdRo+41hPFI/p+57AGUR8j1tKLXsv1gvAA4qeMlis
	IZb4H74puvEye66HivkNANVU5p+TuMhNeV+EsSnlKEDq/jCOpvNihfXZklbNTtxDmKDiacRvFIx4c
	aeFhKS8SEtHhjB6AWzXCVss4FuxL+xlNwVTlFlh1HGA8yTXJb4/77AogTaNotdLL/AoRhWh1botrq
	Bt+2DwP4r7+ENvOyCZbmHJBouPQY/D4O6hW3xzaLgN8FRDoJRCPwxmGGncsaViiTz8dTA4m4olYmA
	9JsvAh10A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTgY2-00024y-Mk; Wed, 29 Apr 2020 06:50:22 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgXt-00023q-MG
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 06:50:16 +0000
Received: by mail-wr1-x429.google.com with SMTP id s10so1120891wrr.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Apr 2020 23:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=xCa8Npfy/Ti2Bzoe+vVNRDuAXJyECLtvW8As6az+OoM=;
 b=qJs79Fb5t6JaUELJQzDiYquzOy5Mt43WFUijEcs8kwNW4D7oQf2YhEm1hngDKLx/5n
 MrzzwM7royitHgVTQz7EXD76Xb7I2dmlm5NXtvaJSJMLd4yRVYZbQhgzWY3Jjb2wAr4X
 1PIE/naM0klr2PJWcP27Z/2IEu93XZRjVz4S+2Y6S6uNrxGP2yWnCVzN3AwW02ZxgKyy
 MgZfwRllEpSxs3V7nIfVl8IHdBWVVSk88FzhzffO8r6OO0DBkP0l2ZMne3FqeewnTGvp
 fVSk3AuYlwVocjZtBdcOhP6oyZdF1wKIP15HKkyWjpAP2GhRJcmN305NJ8AL/mTMEJuH
 DNvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xCa8Npfy/Ti2Bzoe+vVNRDuAXJyECLtvW8As6az+OoM=;
 b=Jd7unFuQr6qNO5EJcHjxgbNtKfaKJc4dFeeDmAXBwjFPCpGPgOFSdPRXipnnoLJNLB
 74D4yfvtM5l9iYCwgFiSa+VBlTCXBWD6rLplAPz3mNAa+/zIf6cPGmsi7o1jDHSXCRcV
 nOUuum0W6Bwtcpdc91GiFnBC7Vn3++mkqgZ86sTrXcg6FTuxLkmG/GtEMvQ8zynKMns7
 q3ihBOhNfBLW8DZ/q8NIQqOlEazXCKzYzmEgo1xGTnwKKk9VcqymW07N5BIXnYBt3AVw
 utx2rsusR4xmhVZ/+hP3Il4KJyNVWTQG5+E1rGBHdT4tPB+CFWBGvfRq+Wj0gBqVUNey
 jwkw==
X-Gm-Message-State: AGi0PuZ+R/FcKdB4MOTbtDc81EglE6GZK2ggoXG2E5p9la+uZ7SVOAZf
 2GFGiBh9grJFR8m2zkpJP5mqWeh2
X-Google-Smtp-Source: APiQypLnbAmev6d3HCEzYSNtxeTs0NrJuuefZjod4mMbAbqsWlWM1NlblGpusf9zlLs4Iv6h/lUN6Q==
X-Received: by 2002:adf:ab1b:: with SMTP id q27mr40082358wrc.220.1588143011410; 
 Tue, 28 Apr 2020 23:50:11 -0700 (PDT)
Received: from [192.168.1.230] (ca-18-212-158.service.infuturo.it.
 [151.18.212.158])
 by smtp.gmail.com with ESMTPSA id 17sm6232325wmo.2.2020.04.28.23.50.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 23:50:11 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <d618aa4a-1fd8-9016-c39e-01e4a4a46ea4@gmail.com>
Date: Wed, 29 Apr 2020 08:50:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_235013_731776_2612EBA1 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [ModemManager] How can I make ModemManager work
 right?
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

CgpPbiAyOS8wNC8yMCAwODoyOSwgSmVvbmdodW0gSm9oIHdyb3RlOgo+IEhlbGxvLAo+IFRoYW5r
cyB0byBtYW55IHBlb3BsZSBpbiB0aGlzIGxpc3QsIEkgd2FzIGFibGUgdG8gZmluZCBNb2RlbU1h
bmFnZXIgYW5kIAo+IEkndmUgdHJpZWQgYXBwbHlpbmcgaXQuCj4gCj4gPT09PSBUZXN0aW5nIGVu
dmlyb25tZW50ID09PT0KPiAKPiBUYXJnZXQgTW9kZWzCoCDCoCDCoCDCoCA6IE1lZGlhVGVrIE1U
NzYyMiBBQzQzMDByZmIxIGJvYXJkCj4gRmlybXdhcmUgVmVyc2lvbiA6IExFREUgUmVib290IDE3
LjAxLVNOQVBTSE9UIHVua25vd24gLyBMdUNJCj4gS2VybmVsIFZlcnNpb27CoCDCoCDCoCA6IDQu
NC4xMjQKPiBNb2RlbcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgOiBIVUNPTSBITS05MDAKPiBN
b2RlbU1hbmFnZXIKPiBWZXJzaW9uwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA6IDEuMTIuOAo+
IG1lbnVjb25maWfCoCDCoCDCoCDCoCDCoCA6IChRTUkgb24sIE1CSU0gb2ZmKQo+IGdpdCBjbG9u
ZSBVUkzCoCDCoCDCoCDCoCA6IAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L3BhY2thZ2Vz
L3RyZWUvbWFzdGVyL25ldC9tb2RlbW1hbmFnZXIKPiAKPiBOb3RlZCBEZXZpY2UgRmlsZXMgOiBU
aG9zZSBmaWxlcyBhbmQgcGF0aHMgYXJlIG5vdGVkL3dhdGNoZWQKPiBxbWljaGFubmVswqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgOiAvZGV2L2NkYy13ZG0wCj4gdXNibmV0X2FkYXB0ZXLCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA6IC9zeXMvY2xhc3MvbmV0L3d3YW4w
Cj4gL3N5cy9idXMvdXNiL2RldmljZXMvMi0xL21hbnVmYWN0dXJlciA6IFFDT00KPiAvc3lzL2J1
cy91c2IvZGV2aWNlcy8yLTEvaWRWZW5kb3LCoCDCoCDCoCDCoCA6MDVDNgo+IC9zeXMvYnVzL3Vz
Yi9kZXZpY2VzLzItMS9pZFByb2R1Y3TCoCDCoCDCoCDCoDo5MGRiCj4gL3N5cy9idXMvdXNiL2Rl
dmljZXMvMi0xL3NwZWVkwqAgwqAgwqAgwqAgwqAgwqAgwqA6NTAwMAo+IC9zeXMvYnVzL3VzYi9k
ZXZpY2VzLzItMS9wcm9kdWN0wqAgwqAgwqAgwqAgwqAgOlNEWFBSQUlSSUUtTVRQwqBfU046QjAy
Q0U1MUIKPiAvc3lzL2J1cy91c2IvZGV2aWNlcy8yLTEvdmVyc2lvbsKgIMKgIMKgIMKgIMKgIMKg
OjMuMjAKPiAvc3lzL2J1cy91c2IvZGV2aWNlcy8yLTE6MS4yL25ldC93d2FuMAo+IC9zeXMvYnVz
L3VzYi9kZXZpY2VzLzItMToxLjIvbmV0L3d3YW4wL2RldmljZS9kcml2ZXIKPiAvc3lzL2J1cy91
c2IvZGV2aWNlcy8yLTE6MS4yL25ldC93d2FuMC9kZXZpY2UKPiAvc3lzL2J1cy91c2IvZGV2aWNl
cy8yLTE6MS4yL3VzYm1pc2MvY2RjLXdkbTAKPiAvc3lzL2RldmljZXMvcGxhdGZvcm0vMWEwYzAw
MDAudXNiL3VzYjIvMi0xLzItMToxLjIKPiAKPiBLZXJuZWwgbW9kdWxlcyB3YXRjaGVkIHZpYSBs
c21vZAo+IGNkY193ZG0gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgODgyMSDCoDEgcW1pX3d3YW4K
PiBxbWlfd3dhbiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDYyNTIgwqAwCj4gdXNiY29yZSDCoCDC
oCDCoCDCoCDCoCDCoCDCoCAxNTM1MTIgMjAgCj4gb3B0aW9uLHVzYl93d2FuLHFtaV93d2FuLGNk
Y19uY20sY2RjX2V0aGVyLHVzYnNlcmlhbCx1c2JuZXQsdXNibHAsY2RjX3dkbSxjZGNfYWNtLHVz
Yl9zdG9yYWdlLHhoY2lfbXRrLHhoY2lfcGxhdF9oY2QseGhjaV9wY2kseGhjaV9oY2QsdWhjaV9o
Y2Qsb2hjaV9wbGF0Zm9ybSxvaGNpX2hjZCxlaGNpX3BsYXRmb3JtLGVoY2lfaGNkCj4gdXNibmV0
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDE5MDI3IMKgMyBxbWlfd3dhbixjZGNfbmNtLGNkY19l
dGhlcgo+IAo+IEFib3ZlwqBpcyBvcmlnaW5hbCBlbnZpcm9ubWVudC4KPiBPbiB0aGlzIGNpcmN1
bXN0YW5jZXMsIEkgZGlzYWJsZWQgQ00gcHJvdmlkZWQgZnJvbSBtb2RlbSBwcm92aWRlciA6IGh1
Y29tLWNtCj4gQW5kIEkgYWRkZWQgb25lIGNvbmZpZ3VyYXRpb24gc2VjdGlvbiBpbnRvIHRoZSBi
b3R0b20gb2YgCj4gL2V0Yy9jb25maWcvbmV0d29yayA6Cj4gY29uZmlnIGludGVyZmFjZSAnYnJv
YWRiYW5kJwo+ICDCoCDCoCDCoCDCoCBvcHRpb24gZGV2aWNlICcvc3lzL2RldmljZXMvcGxhdGZv
cm0vMWEwYzAwMDAudXNiL3VzYjIvMi0xLzItMToxLjInCj4gIMKgIMKgIMKgIMKgIG9wdGlvbiBw
cm90byAnbW9kZW1tYW5hZ2VyJwo+ICDCoCDCoCDCoCDCoCBvcHRpb24gYXBuICc1Zy1pbnRlcm5l
dC5za3RlbGVjb20uY29tIAo+IDxodHRwOi8vNWctaW50ZXJuZXQuc2t0ZWxlY29tLmNvbT4nCj4g
IMKgIMKgIMKgIMKgIG9wdGlvbiB1c2VybmFtZSAnJwo+ICDCoCDCoCDCoCDCoCBvcHRpb24gcGFz
c3dvcmQgJycKPiAgwqAgwqAgwqAgwqAgb3B0aW9uIHBpbmNvZGUgJycKPiAgwqAgwqAgwqAgwqAg
b3B0aW9uIGxvd3Bvd2VyICcxJwo+IAo+IFVuZGVyIHRoZXNlIHNldHRpbmdzLCBJIGNvbmZpcm1l
ZCB0aGF0Cj4gLSBodWNvbS1jbSBpcyBkaXNhYmxlZAo+IC0gTW9kZW1NYW5hZ2VyIGlzIGFsaXZl
Cj4gIMKgNDQzMCByb290IMKgIMKgIMKgMjI5bSBEIMKgIMKgL3Vzci9zYmluL01vZGVtTWFuYWdl
cgo+IAo+IFRoZSB3d2FuMCBpcyBub3Qgc2hvd24gZnJvbSBpZmNvbmZpZyBhbmQgcGluZyA4Ljgu
OC44IGZhaWxzIHNheWluZyAKPiBOZXR3b3JrIGlzIHVucmVhY2hhYmxlLgo+IFNvLCBNeSBmaXJz
dCB0cnlpbmcgdG8gdXRpbGl6ZSBNTSBzZWVtZWQgdG8gYmUgZmFpbGVkLgo+IAo+IE9yaWdpbmFs
bHkgaHVjb20tY20gc2V0cyBicmlkZ2UgbW9kZSBsaWtlIHNob3duIGJlbG93Ogo+IEJSSURHRV9N
T0RFX0ZJTEUgOiAvc3lzL21vZHVsZS9xbWlfd3dhbi9wYXJhbWV0ZXJzL2JyaWRnZV9tb2RlCj4g
QlJJREdFX0lQVjRfRklMRcKgIMKgIDogL3N5cy9tb2R1bGUvcW1pX3d3YW4vcGFyYW1ldGVycy9i
cmlkZ2VfaXB2NAo+IEJ1dCB1bmRlciBNb2RlbU1hbmFnZXIgdGhlc2UgZmlsZXMgYXJlIG5vdCBz
aG93bi4KPiAKPiBBbmQgSSd2ZSBmb3VuZCBtYW55IHBsdWdpbiBsaWJyYXJpZXMgdW5kZXIgL3Vz
ci9saWIvTW9kZW1NYW5hZ2VyOgo+IGxpYm1tLXBsdWdpbi1hbHRhaXItbHRlLnNvIMKgIMKgIGxp
Ym1tLXBsdWdpbi1tdGsuc28gICAgICAgICAgIAo+ICDCoGxpYm1tLXBsdWdpbi10aHVyYXlhLnNv
Cj4gCj4gQ291bGQgc29tZW9uZSBoZWxwIG1lPwo+IAo+IERvIEkgbmVlZCB0byBsb29rIGRlZXBl
ciBpbnRvIE1vZGVtTWFuYWdlcj8KPiBEbyBJIG5lZWQgdG8gaW1wbGVtZW50IG5ldyBwbHVnaW4g
bGlicmFyeSBmb3Igb3VyIHByb2R1Y3Q/Cj4gT3IgZG8gSSBuZWVkIHRvIGZvcmdldCBhYm91dCBN
b2RlbU1hbmFnZXI/Cj4gCj4gTXkgYWxyZWFkeSBnaXZlbiBodWNvbS1jbSBhbnl3YXkgd29ya3Mu
IEl0IGJyaW5ncyBkYXRhIHZpYSB3d2FuMCBhbmQgCj4gZXN0YWJsaXNoIG5ldHdvcmsgaW50ZXJm
YWNlIHd3YW4wLgo+IFByb2JsZW0gaXMgdGhhdCBodWNvbS1jbSBzZXRzIHVwIGZpcmV3YWxsIHJ1
bGVzIGFuZCByb3V0aW5nIHNldHRpbmdzIAo+IHJlZHVuZGFudGx5IGFuZCB1bm5lY2Vzc2FyaWx5
LiBTbyBJIGNhbiBtYWtlIGl0IG5vdCB0byBkbyB0aGVzZSB1bm5lZWRlZCAKPiBzZXR0aW5ncy4g
VGhpcyB3YXkgd291bGQgYmUgZ29vZCBhcHByb2FjaCBJIGJlbGlldmUuCj4gQnV0IHdlJ2QgbGlr
ZSB0byBtYWtlIG91ciBwcm9kdWN0IGluZGVwZWNudGFudMKgZnJvbSBzcGVjaWZpYyBtb2RlbS4g
SSAKPiBndWVzc2VkIHRoYXQgb3BlbnNvdXJjZSBNb2RlbU1hbmFnZXIgaW5mcmFzdHJ1Y3R1cmUg
d291bGQgZ2l2ZSB1cyBzb21lIAo+IHNvcnQgb2YgaW5kZXBlbmRlbmNlIGZyb20gc3BlY2lmaWMg
bW9kZW0gYW5kIGluIG90aGVyIHdvcmRzIGl0IHdvdWxkIAo+IGdpdmUgc29tZSBhYnN0cmFjdGlv
bi4uCj4gCj4gSSBhbSBub3Qgc3VyZSBvZiBhbnl0aGluZy4gQ291bGQgc29tZW9uZSBnaXZlIG1l
IHNvbWUgbGlnaHQgc2/CoHRoYXQgSSAKPiBjYW4gZmluZCB0aGUgYmVzdCB3YXnCoHRvIGdvPwo+
IAo+IEFkZGl0aW9uYWwgcXVlc3Rpb24gOiBJZiBJIHdyaXRlIG91ciBvd24gbG9naWMgYXMgYSBw
bHVnaW4gbGlicmFyeSBvZiAKPiBNb2RlbU1hbmFnZXIsIHdvdWxkbid0IGl0IG5lY2Vzc2FyaWx5
IGhhdmUgdG8gc3RpY2sgdG8gR1BMPyBDYW4gd2UgYXBwbHkgCj4gY29tbWVyY2lhbCBsaWNlbnNl
IGZvciB0aGUgcGx1Z2luPwo+IAo+IFRoYW5rIHlvdSB2ZXJ5IG11Y2ggaW4gYWR2YW5jZS4KPiBK
ZW9uZ2h1bQoKSWYgbm9uZSBhbnN3ZXJzIGJldHRlciBpbiB0aGlzIG1haWxpbmcgbGlzdCwgZGV2
ZWxvcG1lbnQgYW5kIGxpY2Vuc2luZyAKcXVlc3Rpb25zIGFib3V0IE1vZGVtTWFuYWdlciBzaG91
bGQgcHJvYmFibHkgYmUgYXNrZWQgaW4gaXRzIG93biBtYWlsaW5nIApsaXN0IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vbW9kZW1tYW5hZ2VyLWRldmVsCgpB
cyBpdCBpcyBub3QgYSBwYWNrYWdlIGRldmVsb3BlZCBieSBPcGVuV3J0LCBpdCBpcyB1c2VkIGJ5
IGRlc2t0b3AgTGludXggCmRpc3RyaWJ1dGlvbnMgdG9vIChVYnVudHUsIFJIRUwsIFNVU0UgYW5k
IG1vc3Qgb3RoZXJzKSwgT3BlbndydCBvbmx5IApwcm92aWRlcyB0aGUgcGFja2FnZSBhbmQgaW50
ZWdyYXRlcyBpdHMgY29uZmlnIHdpdGggdWNpLgoKLUFsYmVydG8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
