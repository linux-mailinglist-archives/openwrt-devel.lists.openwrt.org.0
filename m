Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A1E129C06
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 01:17:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaJWoBL39Az+o/qAk6/mW/BNh8csUMeTARPEJvxzgQA=; b=HEwXkppUxfoxD4
	Y3BKC1/rAFfBaDs/ozi328RE0E1RyoS9ZS5bgaU1vg3cJx099MNkLO6cuiVuLtMsuSW4MWSzb5/c2
	8XcH+O8FTjVkc3Axe1LZnSKNT4JedxjeSLKXqbfgfxvArdTRmZ5hPyPlTzAftn/GvGKT7CFB1T+CA
	h7IudzWso1aonuzbb66HOv/juskI2oQMs5MvNnZyaXam2mydZRvzKOBoD4FpUNSYW0eG22FHp7eW1
	SChpaxktmD3wk2sGWnDk3+9lXjNsSPqMt57AmjsTfZCworP4S2OTDjqK1vHNGbrfiwGEr2p4xKii9
	J2oFDfa5674fE8BDOTVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijXsu-0001pv-Ph; Tue, 24 Dec 2019 00:17:12 +0000
Received: from mout-p-101.mailbox.org ([2001:67c:2050::465:101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijXsm-0001p8-BW
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 00:17:06 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47hcGZ12tyzKmWh;
 Tue, 24 Dec 2019 01:16:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id AtnEVi94L75z; Tue, 24 Dec 2019 01:16:49 +0100 (CET)
To: Paul Fertser <fercerpav@gmail.com>, =?UTF-8?Q?Bj=c3=b8rn_Mork?=
 <bjorn@mork.no>
References: <20191215172522.26626-1-fercerpav@gmail.com>
 <20191222182057.9805-1-fercerpav@gmail.com>
 <87fthb4d0o.fsf@miraculix.mork.no> <20191223195702.GE11377@home.paul.comp>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 mQINBFtLdKcBEADFOTNUys8TnhpEdE5e1wO1vC+a62dPtuZgxYG83+9iVpsAyaSrCGGz5tmu
 BgkEMZVK9YogfMyVHFEcy0RqfO7gIYBYvFp0z32btJhjkjBm9hZ6eonjFnG9XmqDKg/aZI+u
 d9KGUh0DeaHT9FY96qdUsxIsdCodowf1eTNTJn+hdCudjLWjDf9FlBV0XKTN+ETY3pbPL2yi
 h8Uem7tC3pmU7oN7Z0OpKev5E2hLhhx+Lpcro4ikeclxdAg7g3XZWQLqfvKsjiOJsCWNXpy7
 hhru9PQE8oNFgSNzzx2tMouhmXIlzEX4xFnJghprn+8EA/sCaczhdna+LVjICHxTO36ytOv7
 L3q6xDxIkdF6vyeEtVm1OfRzfGSgKdrvxc+FRJjp3TIRPFqvYUADDPh5Az7xa1LRy3YcvKYx
 psDDKpJ8nCxNaYs6hqTbz4loHpv1hQLrPXFVpoFUApfvH/q7bb+eXVjRW1m2Ahvp7QipLEAK
 GbiV7uvALuIjnlVtfBZSxI+Xg7SBETxgK1YHxV7PhlzMdTIKY9GL0Rtl6CMir/zMFJkxTMeO
 1P8wzt+WOvpxF9TixOhUtmfv0X7ay93HWOdddAzov7eCKp4Ju1ZQj8QqROqsc/Ba87OH8cnG
 /QX9pHXpO9efHcZYIIwx1nquXnXyjJ/sMdS7jGiEOfGlp6N9IwARAQABtCFIYXVrZSBNZWhy
 dGVucyA8aGF1a2VAaGF1a2UtbS5kZT6JAlQEEwEIAD4CGwEFCwkIBwIGFQgJCgsCBBYCAwEC
 HgECF4AWIQS4+/Pwq1ZO6E9/sdOT3SBjCRC1FQUCXQTYzQUJA5qXpgAKCRCT3SBjCRC1FT6c
 D/9gD0CtAPElKwhNGzZ/KNQL39+Q4GOXDAOxyP797gegyykvaqU/p0MOKdx8F2DHJCGlrkBW
 qiEtYUARnUJOgftoTLalidwEp6eiZM9Eqin5rRR6B5NIYUIjHApxjPHSmfws5pnaBdI6NV8t
 5RpOTANIlBfP6bTBEpVGbC0BwvBFadGovcKLrnANZ4vL56zg0ykRogtD8reoNvJrNDK7XCrC
 2S0EYcGD5cXueJbpf6JRcusInYjMm/g2sRCH4cQs/VOjj3C66sNEMvvZdKExZgh/9l9RmW0X
 6y7A0SDtR3APYWGIwV0bhTS2usuOAAZQvFhc+idSG0YrHqRiOTnWxOnXkFFaOdmfk99eWaqp
 XOIgxHr6WpVromVI+wKWVNEXumLdbEAvy1vxCtpaGQpun5mRces5GB2lkZzRjm90uS9PgWB1
 IYj1ehReuj0jmkpan0XdEhwFjQ3+KfyzX7Ygt0gbzviGbtSB2s1Mh0nAdto9RdIYi3gCLQh3
 abtwk6zqsHRBp1IHjyNq60nsUSte4o1+mRBoB6I7uTkxqJPmynwpmAoaYkN2MRO8C1O09Yd4
 H3AgFGZBXpoVbph8Q7hE33Y9UrElfiDsvdj4+JVu1sdPPGFWtpjpe5LeoXzLANAbJ2T+Y68U
 gtsNFCbSKjXsRJlLIHR1yHQbq2VdUDmsUZaRbLkBDQRbS3sDAQgA4DtYzB73BUYxMaU2gbFT
 rPwXuDba+NgLpaF80PPXJXacdYoKklVyD23vTk5vw1AvMYe32Y16qgLkmr8+bS9KlLmpgNn5
 rMWzOqKr/N+m2DG7emWAg3kVjRRkJENs1aQZoUIFJFBxlVZ2OuUSYHvWujej11CLFkxQo9Ef
 a35QAEeizEGtjhjEd4OUT5iPuxxr5yQ/7IB98oTT17UBs62bDIyiG8Dhus+tG8JZAvPvh9pM
 MAgcWf+Bsu4A00r+Xyojq06pnBMa748elV1Bo48Bg0pEVncFyQ9YSEiLtdgwnq6W8E00kATG
 VpN1fafvxGRLVPfQbfrKTiTkC210L7nv2wARAQABiQI8BBgBCAAmAhsMFiEEuPvz8KtWTuhP
 f7HTk90gYwkQtRUFAl0E2QUFCQOakYIACgkQk90gYwkQtRUEfQ//SxFjktcASBIl8TZO9a5C
 cCKtwO3EvyS667D6S1bg3dFonqILXoMGJLM0z4kQa6VsVhtw2JGOIwbMnDeHtxuxLkxYvcPP
 6+GwQMkQmOsU0g8iT7EldKvjlW2ESaIVQFKAmXS8re36eQqj73Ap5lzbsZ6thw1gK9ZcMr1F
 t1Eigw02ckkY+BFetR5XGO4GaSBhRBYY7y4Xy0WuZCenY7Ev58tZr72DZJVd1Gi4YjavmCUH
 BaTv9lLPBS84C3fObxy5OvNFmKRg1NARMLqjoQeqLBwBFOUPcL9xr0//Yv5+p1SLDoEyVBhS
 0M9KSM0n9RcOiCeHVwadsmfo8sFXnfDy6tWSpGi0rUPzh9xSh5bU7htRKsGNCv1N4mUmpKro
 PLKjUsfHqytT4VGwdTDFS5E+2/ls2xi4Nj23MRh6vvocIxotJ6uNHX1kYu+1iOvsIjty700P
 3IveQoXxjQ0dfvq3Ud/Sl/5bUelft21g4Qwqp+cJGy34fSWD4PzOCEe6UgmZeKzd/w78+tWP
 vzrTXNLatbb2OpYV8gpoaeNcLlO2DHg3tRbe/3nHoU8//OciZ0Aqjs97Wq0ZaC6Cdq82QNw1
 dZixSEWAcwBw0ej3Ujdh7TUAl6tx5AcVxEAmzkgDEuoJBI4vyA1eSgMwdqpdFJW2V9Lbgjg5
 2H6vOq/ZDai29hi5AQ0EW0t7cQEIAOZqnCTnoFeTFoJU2mHdEMAhsfh7X4wTPFRy48O70y4P
 FDgingwETq8njvABMDGjN++00F8cZ45HNNB5eUKDcW9bBmxrtCK+F0yPu5fy+0M4Ntow3PyH
 MNItOWIKd//EazOKiuHarhc6f1OgErMShe/9rTmlToqxwVmfnHi1aK6wvVbTiNgGyt+2FgA6
 BQIoChkPGNQ6pgV5QlCEWvxbeyiobOSAx1dirsfogJwcTvsCU/QaTufAI9QO8dne6SKsp5z5
 8yigWPwDnOF/LvQ26eDrYHjnk7kVuBVIWjKlpiAQ00hfLU7vwQH0oncfB5HT/fL1b2461hmw
 XxeV+jEzQkkAEQEAAYkDcgQYAQgAJgIbAhYhBLj78/CrVk7oT3+x05PdIGMJELUVBQJdBNkF
 BQkDmpEUAUDAdCAEGQEIAB0WIQTLPT+4Bx34nBebC0Pxt2eFnLLrxwUCW0t7cQAKCRDxt2eF
 nLLrx3VaB/wNpvH28qjW6xuAMeXgtnOsmF9GbYjf4nkVNugsmwV7yOlE1x/p4YmkYt5bez/C
 pZ3xxiwu1vMlrXOejPcTA+EdogebBfDhOBib41W7YKb12DZos1CPyFo184+Egaqvm6e+GeXC
 tsb5iOXR6vawB0HnNeUjHyEiMeh8wkihbjIHv1Ph5mx4XKvAD454jqklOBDV1peU6mHbpka6
 UzL76m+Ig/8Bvns8nzX8NNI9ZeqYR7vactbmNYpd4dtMxof0pU13EkIiXxlmCrjM3aayemWI
 n4Sg1WAY6AqJFyR4aWRa1x7NDQivnIFoAGRVVkJLJ1h8RNIntOsXBjXBDDIIVwvvCRCT3SBj
 CRC1FZFcD/9fJY57XXQBDU9IoqTxXvr6T0XjPg7anYNTCyw3aXCW/MrHAV2/MAK9W2xbXWmM
 yvhidzdGHg80V3eJuc4XvQtrvK3HjDxh7ZpF9jUVQ39jKNYRg2lHg61gxYN3xc/J73Dw8kun
 esvZS2fHHzG1Hrj2oWv3xUbh+vvR1Kyapd5he8R07r3vmG7iCQojNYBrfVD3ZgenEmbGs9fM
 1h+n1O+YhWOgxPXWyfIMIf7WTOeY0in4CDq2ygJfWaSn6Fgd4F/UVZjRGX0JTR/TwE5S2yyr
 1Q/8vUqUO8whgCdummpC85ITZvgI8IOWMykP+HZSoqUKybsFlrX7q93ykkWNZKck7U7GFe/x
 CiaxvxyPg7vAuMLDOykqNZ1wJYzoQka1kJi6RmBFpDQUg7+/PS6lCFoEppWp7eUSSNPm8VFb
 jwa1D3MgS3+VSKOMmFWGRCY99bWnl2Zd2jfdETmBFNXA94mg2N2vI/THju79u1dR9gzpjH7R
 3jmPvpEc2WCU5uJfaVoAEqh9kI2D7NlQCG80UkXDHGmcoHBnsiEZGjzm5zYOYinjTUeoy3F0
 8aTZ+e/sj+r4VTOUB/b0jy+JPnxn23FktGIYnQ+lLsAkmcbcDwCop4V59weR2eqwBqedNRUX
 5OTP93lUIhrRIy3cZT/A5nNcUeCYRS8bCRFKrQKEn92RFg==
Message-ID: <4d6e1b57-d2f5-0f53-b118-4b999d4f15c8@hauke-m.de>
Date: Tue, 24 Dec 2019 01:16:48 +0100
MIME-Version: 1.0
In-Reply-To: <20191223195702.GE11377@home.paul.comp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_161704_694663_A0DA5710 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Ben Greear <greearb@candelatech.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMTIvMjMvMTkgODo1NyBQTSwgUGF1bCBGZXJ0c2VyIHdyb3RlOgo+IEhpIEJqw7hybiwKPiAK
PiBPbiBNb24sIERlYyAyMywgMjAxOSBhdCAxMDoxNzoxMUFNICswMTAwLCBCasO4cm4gTW9yayB3
cm90ZToKPj4gUGF1bCBGZXJ0c2VyIDxmZXJjZXJwYXZAZ21haWwuY29tPiB3cml0ZXM6Cj4+PiAt
LS0gL2Rldi9udWxsCj4+PiArKysgYi9wYWNrYWdlL2tlcm5lbC9hdGgxMGstY3QvcGF0Y2hlcy85
NjAtMDAxMS1hdGgxMGstbGltaXQtcGNpLWJ1ZmZlci1zaXplLnBhdGNoCj4+PiBAQCAtMCwwICsx
LDEwMCBAQAo+Pj4gKy0tLSBhL2F0aDEway00LjE5L3BjaS5jCj4+PiArKysrIGIvYXRoMTBrLTQu
MTkvcGNpLmMKPj4+ICtAQCAtMTQyLDcgKzE0MiwxMSBAQCBzdGF0aWMgc3RydWN0IGNlX2F0dHIg
aG9zdF9jZV9jb25maWdfd2xhCj4+PiArIAkJLmZsYWdzID0gQ0VfQVRUUl9GTEFHUywKPj4+ICsg
CQkuc3JjX25lbnRyaWVzID0gMCwKPj4+ICsgCQkuc3JjX3N6X21heCA9IDIwNDgsCj4+PiArKyNp
Zm5kZWYgQ09ORklHX0FUSDEwS19TTUFMTEJVRkZFUlMKPj4+ICsgCQkuZGVzdF9uZW50cmllcyA9
IDUxMiwKPj4+ICsrI2Vsc2UKPj4+ICsrCQkuZGVzdF9uZW50cmllcyA9IDEyOCwKPj4+ICsrI2Vu
ZGlmCj4+PiArIAkJLnJlY3ZfY2IgPSBhdGgxMGtfcGNpX2h0dF9odGNfcnhfY2IsCj4+PiArIAl9
LAo+Pj4gKyAKPj4KPj4gV2h5IG5vdCByZXBsYWNlIHRoZSBtYWdpYyBudW1iZXJzIHdpdGggYSBt
YWNybz8gIFRoZW4geW91IGNvdWxkIGdldCBhd2F5Cj4+IHdpdGggKm9uZSogImlmIGNvbmZpZ3gg
dGhlbiB0aGlzIGVsc2UgdGhhdCI/ICBBbmQgcHJlZmVyYWJseSBwdXQgaXQgaW4gYQo+PiBoZWFk
ZXIgZmlsZS4KPiAKPiBUaGVyZSdyZSBkaWZmZXJlbnQgdmFsdWVzIGZvciBkaWZmZXJlbnQgYnVm
ZmVycyBzbyB0aGVyZSBjYW4ndCBiZSBhCj4gc2luZ2xlIG51bWJlciB0byBmaXQgdGhlbSBhbGwu
IEFuZCBJIGRvIG5vdCBzZWUgaG93IGFkZGluZyA0IGRpZmZlcmVudAo+IGRlZmluZXMganVzdCBm
b3IgdGhlIHNha2Ugb2YgaXQgd291bGQgbWFrZSBzZW5zZSB0aGVyZS4KPiAKPj4gT3IgbWF5YmUg
dGhlc2UgdGhpbmdzIGV2ZW4gY291bGQgYmUgbWFkZSBydW50aW1lIGNvbmZpZ3VyYWJsZT8gIEJ1
ZmZlcnMKPj4gb2YgdGhpcyBzaXplIHJlYWxseSBzaG91bGQgYmUgSU1ITywgYXMgdGhlcmUgaXMg
bm8gd2F5IHRvIG1ha2Ugb25lIHNpemUKPj4gZml0IGFsbC4gIEFzIGRlbW9uc3RyYXRlZC4uLgo+
IAo+IFRoaXMgd2FzIGFscmVhZHkgZGlzY3Vzc2VkLCBwbGVhc2Ugc2VlIFswXS4gSSB0aGluayBh
ZGRpbmcgYSBrZXJuZWwKPiBtb2R1bGUgcGFyYW1ldGVyIHdvdWxkIG1ha2Ugc2Vuc2UgZm9yIHRo
aXMgYnV0IGl0J3MgYWxzbyBtdWNoIG1vcmUKPiBjb21wbGljYXRlZCB0aGFuIGp1c3QgYWRkaW5n
IHR3byBwYXRjaGVzIHRoYXQgd2VyZSBhbHJlYWR5IHVzZWQgaW4KPiBPcGVuV3J0IGZvciBtYW55
IHllYXJzLiBTbyBmYXIgbm9ib2R5IHZvbHVudGVlcmVkIHRvIGRvIHRoYXQsIGFuZCBJCj4gd2Fu
dGVkIHRvIHByb3ZpZGUgYXQgbGVhc3Qgc29tZSBzZW1pLXNhbmUgc29sdXRpb24gZm9yIHRoZSB1
cGNvbWluZwo+IHJlbGVhc2UuCj4gCj4gWzBdIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcv
Y29tbWVudC8yMzIyNzAxLwo+IApIaSBQYXVsLAoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoZXMs
IEkgYXBwbGllZCBib3RoIHBhdGNoZXMgdG8gbWFzdGVyIHdpdGggc29tZQpzbWFsbCBmaXhlcyBh
bmQgYmFja3BvcnRlZCB0aGUgZmlyc3QgcGF0Y2ggZm9yIDE5LjA3IGJyYW5jaC4gVGhlIHBhdGNo
CmFkZGluZyB0aGUgZGVwZW5kZW5jaWVzIHRvIHRoZSBhdGg3OSB0YXJnZXQgaXMgbm90IGFwcGx5
aW5nIG9uIDE5LjA3LCBpdAp3b3VsZCBiZSBuaWNlIGlmIHlvdSBjb3VsZCBwcm92aWRlIGEgdmVy
c2lvbiBvbiB0b3Agb2YgMTkuMDcgdG9vLgoKSGF1a2UKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
