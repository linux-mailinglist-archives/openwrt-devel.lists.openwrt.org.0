Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9757C1BA584
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 15:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dXssvK0I96jNTeX/W6+2xgYVjV/KsGyPJ5BT2/DcxqY=; b=SaPr0n1yOEL8eT4ACgGRQYLbd
	/9jWiXYtJmH4DYaHLxW8MDlDmsIyjDjJvG+gCw2sqnE8xSZLcEC/A840VX/WTDi++AVkVdd6UUB/W
	N2Q5jUUjWD/oW6bd+DdtBaDc5FBdtWTbXu2haX0j7WLKbck4+rgd1QWwtODsV/9ABUMlceTKAIlvw
	X9m7QEo3pOim9JrjPII6fM1wXg25VH+DdBKLpGTrrTFL3Z/Y/SFrXTPasOyRs/aNKBYjzML2NHtnd
	LSrViokimkTcbyG9vi4GHoZmREHmv5RIs81X5Suz/W8jyxS6mSaJeA/+Qv7FrR6QkGcOSadli/Fdu
	pmIY9uCxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4GA-0008MP-KJ; Mon, 27 Apr 2020 13:57:22 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4Fx-0008Jk-Qj
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 13:57:11 +0000
Received: from [192.168.254.4] (unknown [50.34.219.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id A125413C283;
 Mon, 27 Apr 2020 06:57:07 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com A125413C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1587995827;
 bh=P3HHlQCF5o6fPtabFKRA58jvXVfaZd8203G4CNmxKCw=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=KEdlAww+Ci6NeVSq0b4iAGc9jh1gu6v96cydSf2BC1NfsCuY44XsEdcfJWxk7jHcF
 5f8lcPAISTW8eH30iGYedZNIGmK986l7lPvSJHpnWpbZsl94YAHnBzJvlPJb6sZTbJ
 aWrpVgobKE4WfcAqBOe5fU4VIk5jfnEoNaknLxyo=
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <c66aa83d-54a8-711e-2899-7c0335db49aa@candelatech.com>
 <8256a6ab-2f86-8dee-7bb9-f6ab83e704be@gmail.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <78ca10e1-03c2-8171-8965-f977d3fc8a14@candelatech.com>
Date: Mon, 27 Apr 2020 06:57:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <8256a6ab-2f86-8dee-7bb9-f6ab83e704be@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_065709_936214_A689AF9B 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] New ath10k-ct firmware available.
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

SGVsbG8sCgpJIGxvb2tlZCBhdCB0aGlzIGJyaWVmbHkgYW5kIGl0IGxvb2tzIE9LIHRvIG1lLiAg
SSBkaWQgbm90IHRlc3QgaXQgb3V0CnRob3VnaC4KClRoYW5rcywKQmVuCgpPbiAwNC8yNi8yMDIw
IDA1OjI2IEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4gSGkgQmVuLAo+Cj4g
SSd2ZSByZW5hbWVkIHRoZSBvbGQgZnVsbC1odHQtbWd0IGZpcm13YXJlcyBhbmQgYWRkZWQgdGhl
IG5ldyBvbmVzIGFzIGh0dC1tZ3QuIFRoaXMgd2F5IHRoZSB1c2VyIGNhbiBjaG9vc2UgYmV0d2Vl
biBib3RoIG9mIHRoZW06Cj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9wdWxs
LzI5NjMKPgo+IEJlc3QgcmVnYXJkcywKPiDDgWx2YXJvLgo+Cj4gRWwgMjQvMDQvMjAyMCBhIGxh
cyAyMDo0OCwgQmVuIEdyZWVhciBlc2NyaWJpw7M6Cj4+IEZvciB0aGUgd2F2ZS0yLCB0aGVyZSBp
cyBub3cgYSBuZXcgdmFyaWFudDogIGh0dC1tZ3QtY29tbXVuaXR5ICh2cyB0aGUgb2xkIGZ1bGwt
aHR0LW1ndC1jb21tdW5pdHkpCj4+IHRoZSBub24tZnVsbCBvbmUgKGhlbmNlIGZvcnRoICdkaWV0
JykgY29tcGlsZXMgb3V0IGEgbG90IG9mIGZpcm13YXJlIGZlYXR1cmVzIHRoYXQgYXRoMTBrIGRv
ZXMgbm90IHVzZSAoYW5kL29yIHdoaWNoIEkKPj4gY29uc2lkZXIgdW5pbXBvcnRhbnQpLiAgVGhp
cyBzYXZlcyBhIGxvdCBvZiByZXNvdXJjZXMgYW5kIGxldHMgb25lIGNvbmZpZ3VyZSBtb3JlIHN0
YXRpb25zL3ZkZXZzL2V0Ywo+PiB1c2luZyBmd2NmZy4KPj4KPj4gSSBhbHNvIHR1bmVkIHRoZSA5
ODg2LzggYW5kIDQwMTkgZmlybXdhcmUgdG8gbWFrZSBiZXR0ZXIgdXNlIG9mIG1lbW9yeS4gIFdp
dGggcHJvcGVyIGZ3Y2ZnLAo+PiB0aGUgOTg4OCBzdXBwb3J0cyAyMDAgc3RhdGlvbnMgYW5kIHRo
ZSA0MDE5IHN1cHBvcnRzIDE2Mi4gIEkgaGF2ZSBub3QgeWV0IGZ1bGx5IHRlc3RlZCB0aGlzCj4+
IG9mIGNvdXJzZSwgYnV0IHdpbGwgYmUgZG9pbmcgc28gb3ZlciB0aGUgY29taW5nIGRheXMuICBJ
IGRpZCBwcmV2aW91c2x5IHRlc3QgMjI4IHRvdGFsIHN0YXRpb25zCj4+IG9uIGEgTGlua3N5cyBN
UjgzMDAgKGFrYSBFQTgzMDApIGFuZCBpdCBkaWQgZmluZSBpbiBhIHRvcnR1cmUgdGVzdC4KPj4K
Pj4gTXkgc3VnZ2VzdGlvbiBpcyB0byB1c2UgdGhlIGRpZXQgY29tcGlsZSBpbiBwbGFjZSBvZiB0
aGUgJ2Z1bGwtaHR0LW1ndCcgb25lLCBidXQgYW5vdGhlciBvcHRpb24gaXMKPj4gdG8gZ2l2ZSB0
aGUgdXNlciBhbm90aGVyIG9wdGlvbiB0byBwaWNrIHRoZXkgZmlsZSB0aGV5IHdhbnQgaW4gdGhl
IG9wZW53cnQgbWFrZWZpbGUuCj4+Cj4+IEkgYW0gaG9waW5nIHNvbWVvbmUgd2lsbCBiZSBhYmxl
IHRvIGRvIHRoZSBvcGVud3J0IHBhdGNoLCBoZXJlIGlzIHRoZSByYXcgaW5mbyBiZWxvdy4KPj4K
Pj4KPj4gOTg4eAo+PiA4YjRjOTkyNTNhYTMwOWQzNWYyZTA2MGMxOTAwOTFiOGRiMWI4NGRiZGEw
NmE2YTE1YzgzYWMwZjlhOTM4MTI2ICBmaXJtd2FyZS0yLWN0LWZ1bGwtY29tbXVuaXR5LTIyLmJp
bi5sZWRlLjAxOAo+PiBhNzE2ODkxNmQ2YWE1ZTRkNzg1OGY4YjYyMGMwYzk4MGM3NmQwM2YzOTA5
MjlkYjZmNDA3NzY4NWNlMjA1MWU3ICBmaXJtd2FyZS0yLWN0LWZ1bGwtaHR0LW1ndC1jb21tdW5p
dHktMjIuYmluLmxlZGUuMDE4Cj4+IC9ob21lL2dyZWVhcmIvY2FuZGVsYV9odG1sL2Rvd25sb2Fk
cwo+PiA5ODg3Cj4+IDQ1OTY5MmRlYjE4NmE2M2FiOGVlZGRiN2FkNWQ1NDc3OTI2NmU2OGNhNjg2
ZTdjNDYwNjI1NTRkYjZkY2ExMmIgIGZpcm13YXJlLTItY3QtZnVsbC1jb21tdW5pdHktMjIuYmlu
LmxlZGUuMDE4Cj4+IGZkMTI2YTQ1N2QwOTI3ZDBjOGVhMTBkNjZlZjViNjdkNWUxZTA3NDFmODY5
MmJiMzAxNmJiNjAyZDBhZjMwOTggIGZpcm13YXJlLTItY3QtZnVsbC1odHQtbWd0LWNvbW11bml0
eS0yMi5iaW4ubGVkZS4wMTgKPj4gL2hvbWUvZ3JlZWFyYi9jYW5kZWxhX2h0bWwvZG93bmxvYWRz
Cj4+IDk5ODAKPj4gY2YyNmViMzc1MjRkZTU0YWY1MWZlOWIyZWZmZmM4NWUwZTcwYWI4NDllODYw
N2VmNjNjZTVhOGVjZmZlYWE0MiAgZmlybXdhcmUtNS1jdC1mdWxsLWNvbW11bml0eS0xMi5iaW4t
bGVkZS4wMTgKPj4gZTk3Mzc1MzhkNzM3OWUxM2FkNGU0YzhjNTE5YTYzNjU5YjVlMzRhMzU0NTVl
ZDlhYzQzOTlhZTgwOTdjYWFiYyAgZmlybXdhcmUtNS1jdC1mdWxsLWh0dC1tZ3QtY29tbXVuaXR5
LTEyLmJpbi1sZWRlLjAxOAo+PiA0ZDRmNzRhZmNhNDg3ZDQ1MmYyNDRjZDQ4MzA0Y2Y5NzEwZDg5
NDFlYjk3YTYzNDZhOTQ5ZWQ2YjY4NzdkNjU3ICBmaXJtd2FyZS01LWN0LWh0dC1tZ3QtY29tbXVu
aXR5LTEyLmJpbi1sZWRlLjAxOAo+PiAvaG9tZS9ncmVlYXJiL2NhbmRlbGFfaHRtbC9kb3dubG9h
ZHMKPj4gOTk4NAo+PiBhNmIzZDY2ZWZlNjQwYTQzMGE4MzdmMjM4ZTkxZWRkY2Q0MjNlZWQ2Yjg4
N2QzYWUxOTcxNmQ4N2E3MWZkMGIxICBmaXJtd2FyZS01LWN0LWZ1bGwtY29tbXVuaXR5LTEyLmJp
bi1sZWRlLjAxOAo+PiA5NjA2MDIyN2UzNzJiM2IyMTBiYWRjY2JlNmIwYmQ3NWQ5YTM1MzM1YTdh
MGYyOTY2OTY0ZTllODlmNjZiMDBmICBmaXJtd2FyZS01LWN0LWZ1bGwtaHR0LW1ndC1jb21tdW5p
dHktMTIuYmluLWxlZGUuMDE4Cj4+IGVlNTkzZmI1NzI0ZDc1YzM3MmRlMDJhYzc4OTRlMTYzMGVl
OWY5MDlmY2IyZTJiYmYxN2FhZGVmNjdjYjlkNDMgIGZpcm13YXJlLTUtY3QtaHR0LW1ndC1jb21t
dW5pdHktMTIuYmluLWxlZGUuMDE4Cj4+IC9ob21lL2dyZWVhcmIvY2FuZGVsYV9odG1sL2Rvd25s
b2Fkcwo+PiA0MDE5Cj4+IDQ2ZDhmOGYxZTc4MDgxMzI5OWRjODc4MGVlZGNmY2VkYTEwM2M2YjRk
ODkwODU4OWFkMWFkYmVmOTIxNzE0YzAgIGZpcm13YXJlLTUtY3QtZnVsbC1jb21tdW5pdHktMTIu
YmluLWxlZGUuMDE4Cj4+IGQ4ODQ2MjRmYzM0ZjRiNWRlN2EzZWMwNTM0NjI3YzQ2Y2VhMjVmY2E0
NTY1N2YzYTJmNmJiODVmNmM1ODkzZDcgIGZpcm13YXJlLTUtY3QtZnVsbC1odHQtbWd0LWNvbW11
bml0eS0xMi5iaW4tbGVkZS4wMTgKPj4gNTFmZTA2ZjY2MzY1NzcxNjQ3ZDE2MDM5Y2NhOGI1NDFk
ZTNkNjQyYzQ1MjcxOTc3YTRjZmQ0MzNjMmM1ZDQ1YiAgZmlybXdhcmUtNS1jdC1odHQtbWd0LWNv
bW11bml0eS0xMi5iaW4tbGVkZS4wMTgKPj4gL2hvbWUvZ3JlZWFyYi9jYW5kZWxhX2h0bWwvZG93
bmxvYWRzCj4+IDk4ODgKPj4gZDAxZjE0MjlhYWYwYmZhYzA3ZWVlMzU0N2U1ODIxZDE5MTM2ODQw
YjJmOTgzZTc1ZTc2OTc5YTVhYzE5YjZmMCAgZmlybXdhcmUtNS1jdC1mdWxsLWNvbW11bml0eS0x
Mi5iaW4tbGVkZS4wMTgKPj4gNjhjNDJmOGUwZGNmNzdmMThkNDgxM2FjOTMxNzRiZjA2ZmY1Y2Y1
YWE0ZjY5YmVmZTdmMzVmOWZhZTFkZTFlMyAgZmlybXdhcmUtNS1jdC1mdWxsLWh0dC1tZ3QtY29t
bXVuaXR5LTEyLmJpbi1sZWRlLjAxOAo+PiA2YzY5MjE0MTE1NWY1YmI3NGMwMTE3NTUzZDVkNDhm
ZjJhYWJhNzNiZDRkNWU5MGE1MDQ0YTVlMmVjMGZhYWIwICBmaXJtd2FyZS01LWN0LWh0dC1tZ3Qt
Y29tbXVuaXR5LTEyLmJpbi1sZWRlLjAxOAo+PiAvaG9tZS9ncmVlYXJiL2NhbmRlbGFfaHRtbC9k
b3dubG9hZHMKPj4KPj4gRXhhbXBsZSBmd2NmZyBmaWxlcyBmb3IgOTg4OCBhbmQgNDAxOSB1c2lu
ZyB0aGUgZGlldCBodHQgbWd0IGJ1aWxkczoKPj4KPj4gcm9vdEBPcGVuV3J0Oi9saWIvZmlybXdh
cmUvYXRoMTBrIyBjYXQgZndjZmctcGNpLTAwMDBcOjAxXDowMC4wLnR4dAo+PiAjIEZvciA5ODg4
Cj4+IHZkZXZzID0gOAo+PiBwZWVycyA9IDIwMgo+PiBhY3RpdmVfcGVlcnMgPSAyMDIKPj4gc3Rh
dGlvbnMgPSAyMDIKPj4gcmF0ZV9jdHJsX29ianMgPSA3Cj4+IHJlZ2RvbSA9IDg0MAo+PiAjZndu
YW1lID0gZmlybXdhcmUtNS1odHQtbWd0LWIuYmluCj4+IGZ3dmVyID0gNQo+PiBub2h3Y3J5cHQg
PSAwCj4+IGN0X3N0YV9tb2RlID0gMAo+PiB0eF9kZXNjID0gMjIwMAo+PiAjbWF4X25zcyA9IDMK
Pj4gdGlkcyA9IDQ1MAo+PiBza2lkX2xpbWl0ID0gMzYwCj4+IG1heF9hbXNkdXMgPSAzCj4+Cj4+
IHJvb3RAT3BlbldydDovbGliL2Zpcm13YXJlL2F0aDEwayMgY2F0IGZ3Y2ZnLWFoYi1hMDAwMDAw
LndpZmkudHh0Cj4+IHZkZXZzID0gOAo+PiBwZWVycyA9IDE2NAo+PiBhY3RpdmVfcGVlcnMgPSAx
NjQKPj4gc3RhdGlvbnMgPSAxNjQKPj4gcmF0ZV9jdHJsX29ianMgPSA3Cj4+IHJlZ2RvbSA9IDg0
MAo+PiAjZnduYW1lID0gZmlybXdhcmUtNS1odHQtbWd0LWIuYmluCj4+IGZ3dmVyID0gNQo+PiBu
b2h3Y3J5cHQgPSAwCj4+IGN0X3N0YV9tb2RlID0gMAo+PiB0eF9kZXNjID0gMjAwMAo+PiAjbWF4
X25zcyA9IDMKPj4gdGlkcyA9IDI2MAo+PiBza2lkX2xpbWl0ID0gMzYwCj4+IG1heF9hbXNkdXMg
PSAzCj4+Cj4+IFRoYW5rcywKPj4gQmVuCj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgotLSAKQmVuIEdyZWVhciA8Z3JlZWFyYkBj
YW5kZWxhdGVjaC5jb20+CkNhbmRlbGEgVGVjaG5vbG9naWVzIEluYyAgaHR0cDovL3d3dy5jYW5k
ZWxhdGVjaC5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
