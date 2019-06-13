Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D4E44DEC
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 22:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3qvnAYaxmvcFC+up1JkmKW+Q+POHA5H+yDnBhWojKo=; b=UaANN0lFyO4oFp
	PmZbvzBgQMCXy0fRpnW3U7DrLE6boCsPHibaV/0Wj9Nekl/eAmURO2sYmLAp2ZWjDORHjTyV2B7YA
	mpmh7dHw40UiqEDa4mFlINq/L/eXfFpPJncOEcLr/NjrTPbGSORzsmtnzy3PT9IdbPfU0X72vLMwh
	ee3V5Gsdi35UX2k1KxFh6E5fWQBjmit4Dvy2vhzY7gOJ1jkk6QR8AmmPjcYL2ZyTUmF9OmQunjCm/
	bb87Ld4D9GoXV22zSxrRFAi0vPmWC0HJciXs2vA2lulMPrudHGjY6n8ihRzjFek/mVs9sWc36CsHD
	leO/m55dVYvGwex8aBdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbWmR-0003s7-JK; Thu, 13 Jun 2019 20:57:07 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbWmI-0003rj-30
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 20:57:00 +0000
Received: from [IPv6:2003:e5:3f09:9c00:93b6:e161:a050:d22a]
 (p200300E53F099C0093B6E161A050D22A.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f09:9c00:93b6:e161:a050:d22a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 9A5C9222F2;
 Thu, 13 Jun 2019 22:56:52 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <1559653541-26682-1-git-send-email-ynezz@true.cz>
 <CAAd0S9CEPJqQXJ6OhW9_597ig92Typb7s0L5HwpLm-CU=ska6g@mail.gmail.com>
 <1eaf3583-d246-8598-eecd-6d27e16b914e@david-bauer.net>
 <20190613195042.GD39806@meh.true.cz>
Openpgp: id=D70432697B7C4C27380FCDA3BAB39714B4A4B878
Autocrypt: addr=mail@david-bauer.net; prefer-encrypt=mutual; keydata=
 mQENBFYkGEcBCADbRMHdOXmszxrmE9G/gWUD4/HXklOfn+hyBpEcOul+GKAet0oFxznkchJe
 hO5MbEFYsnM8TZVxjnEi70c3luF1m4JycjgQ91GJ52+xvLV0dVz+L99JBgVJNRDvvt68rLVq
 A8/LCdkXctZ+GBfrtTYQ6dOeuQf/qWuwlNTvuG92uWVZjncyWOmQX73gv+1MTRsCmIGNYQu1
 ZDVyhr3YsTgJIXTHUCxBHQBDglkb3L5lK9WHPf1puQ2grNbUg9VSmo4a9IzUpRauNtCDUFxi
 1m1e5VnmU5O5/xZyDzwmpWog9tUfScS7X9pdVNQ+2W3zCRrotFEn6FKdD01mhIsLnczjABEB
 AAG0IkRhdmlkIEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD6JAVkEEwEIAEMCGwMHCwkI
 BwMCAQYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRhu
 BQkIy2cnAAoJELqzlxS0pLh4It8IALb1ea/ezwy8v65zmTeIepeuO5umWzWIy7fLaAsxzJbH
 rO6rCTnRN5ZLyzuxNlhYMyvXAJL7kmPuEOOzHk5xh3soV24VZLSryzGeB6TG3g8L6D0guJ72
 JMM/2HGP8g1zu/IfIM94DZJk7WEuRKG5sndZp49s/voKhrMqAvAU4G03knpEN5SbJx5RA/Wf
 i5stipz2vqS87jHgOVTL1m67Wg9jhKuzJbSlt+m8rHZCQ9dCQQLtqbHugnyOrFhKxwfGFEMB
 aV0sKwoBfjtWP/g3kb9L5wOvRj8UnDRLTB/fVnOsMD18ILEiNqc6FCh4hIb4y2QQEc0nb68f
 imjr4Hz7TOe5AQ0EViQYRwEIALqz1V6kWIvCTVN/6QN9fepVSwSw+5IiiVBGtf2rtdqujCRD
 bGi96a2ZLYRQzlSQvCZ51skgoZFmIW2YhPP90qiZssSEQxgY1rf+DEYnjWmFSgi3iHqYXRk2
 cY7OI3ZT8D2tAFu9pIAxZpD5FdQznJmUhljeTJw+lGOoxctf1xjHZcRcU6GUFMpFBc4xaLC0
 hUN24HT5pDpklxskPFH91VncDaOsLesqszGaUHWx3hogRfogdADvycUp/bQB80kZO/XqexWN
 GUNJYS4axWM2ND25bWV1h9aFjPpOwFM7FwAyra0VihnnNn7dTL5vBpFztY0IFPlvqyc1Vw8y
 vgtShA0AEQEAAYkBPAQYAQgAJgIbDBYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRiFBQkI
 y2c+AAoJELqzlxS0pLh4LIcH/jnL+ytxRSAh8VX3U2xrMOhBFOkJbW9fj6UgE2iFfZUEOBZl
 q6fZTYn1LOTOECrnLC6eNUQsnZ2u+/N93I5Fmof0MIICUbVabEVmbF/jCFkKjrTPFv/DbNZy
 c+X2ugyX7LsJT+CdvtPT9fObTLCS1nQc3G49syEGVEIzPNyIFzJbFLyh1AfRxmnzAwlal6xK
 S82CsKe+n2lwWg2dyyoJYqwM2G6hAg/ZFqRBZ1RH6TsACGMnwvmsfW/871mPt/mOTCDoH1s1
 tcsgxxtD87UnEqA4zL8dqi5uRA82ZznWaq3mzOGKcBkgEcxi8nnQWW+EyTiZWC+wJ9xT4kLh
 z03IzJQ=
Message-ID: <ba94c68b-5640-96f3-fc9e-4cfe4baa64b6@david-bauer.net>
Date: Thu, 13 Jun 2019 22:56:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613195042.GD39806@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_135658_427589_359CD366 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: fix
 always missing first event
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gUGV0ciwKCk9uIDEzLjA2LjE5IDIxOjUwLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IERh
dmlkIEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD4gWzIwMTktMDYtMTEgMjM6NTI6NDZdOgo+
IAo+IEhpLAo+IAo+PiBJIHJhbiBpbnRvIHByb2JsZW1zIGJvb3RpbmcgbXVsdGlwbGUgUUNBOTU1
OCBib2FyZHMsIG5hbWVseSB0aGUgT0NFRE8KPj4gS29hbGEgYW5kIHRoZSBkZXZvbG8gV2lGaSBw
cm8gMTIwMGUgd2l0aCB0aGUgY3VycmVudCBtYXN0ZXIuIEJvdGgKPj4gZGV2aWNlcyBhbHdheXMg
Z28gaW50byBmYWlsc2FmZSBtb2RlIHdoZW4gcG93ZXJpbmcgb24uCj4gCj4gYXI3MXh4IG9yIGF0
aDc5PyBDYW4geW91IHRlc3QgaWYgaXQgaGFwcGVucyBhbHNvIHdpdGggdGhlIGludGVycnVwdCBi
YXNlZAo+IGBncGlvLWtleXNgIHZhcmlhbnQ/CgpJIGRpZCBzb21lIGZ1cnRoZXIgdGVzdGluZywg
dGhlIGlzc3VlIG9uIG15IEtvYWxhIHdhcyBhIGhhcmR3YXJlIGZhdWx0Cih0aGUgcmVzZXQgc3dp
dGNoIHdhcyBwaHlzaWNhbGx5IGJyb2tlbiBtKCApLiBXaXRoIHRoZSBoYXJkd2FyZSBidXR0b24K
Zml4ZWQsIGl0IGRvZXMgbm90IHNob3cgdGhpcyBiZWhhdmlvci4KClRoaXMgd2FzIGV4cGVjdGVk
IHRob3VnaCBhcyBpdCB1c2VzIHBvbGxlZCBncGlvLWtleXMgaW5zdGVhZCBvZiB0aGUKaW50ZXJy
dXB0IGJhc2VkIG9uZXMuCgpUaGUgZGV2b2xvIFdpRmkgcHJvIDEyMDBlIGlzIGF0aDc5IHdpdGgg
dGhlIGludGVycnVwdC1iYXNlZCBncGlvLWtleXMuClRoZSBpc3N1ZSBpcyBub3QgcHJlc2VudCB3
aGVuIHVzaW5nIHBvbGxlZCBncGlvLWtleXMuIFRoZSBkZXZpY2UgZG9lcwpub3QgZ28gaW50byBm
YWlsc2FmZSB3aGVuIHVzaW5nIHBvbGxlZCBHUElPIGtleXMuCgo+IAo+PiBJIGhhdmVuJ3QgZHVn
IGRlZXBlciBpbnRvIHRoaXMgaXNzdWUsIGJ1dCByZXZlcnRpbmcgNmM1YmZhYWM4NCBsZWFkcwo+
PiBpbnRvIGJvdGggYm9hcmRzIGJvb3Rpbmcgbm9ybWFsbHkuCj4gCj4gY291bGQgeW91IHBsZWFz
ZSBjb21waWxlIGtlcm5lbCB3aXRoIGBDT05GSUdfS0VSTkVMX0RZTkFNSUNfREVCVUc9eWAgYW5k
IHRoZW4KPiBhZGQgdG8gdGhlIGtlcm5lbCBjbWRsaW5lIGBncGlvX2J1dHRvbl9ob3RwbHVnLmR5
bmRiZz0nZmlsZSBncGlvLWJ1dHRvbiogK3AnYAo+IChvciB0byBtb2Rwcm9iZSBhcmdzKSBhbmQg
cHJvdmlkZSB0aGUgb3V0cHV0PwoKSSBkaWQgc29tZSBmdXJ0aGVyIHRlc3RpbmcgYW5kIGkgdGhp
bmsgaSd2ZSBmb3VuZCB0aGUgY3VscHJpdCAtIE9uCnByb2JlIHRoZSBHUElPIHJlYWRzIGhpZ2gu
IFNob3J0bHkgYWZ0ZXIgcHJvYmUsIGFuIGludGVycnVwdCBpcyByZWNlaXZlZAphbmQgdGhlIEdQ
SU8gc3dpdGNoZWQgdG8gbG93IHdoaWNoIHRyaWdnZXJzIGEgYnV0dG9uIGV2ZW50IGFuZCB0aGVy
ZWZvcmUKc2VuZHMgdGhlIGRldmljZSBpbnRvIGZhaWxzYWZlLiBJIHN1cHBvc2UgdGhlIEdQSU8g
aGFzIGp1c3Qgc3dpdGNoZWQgdG8KYSBzdGFibGUgc3RhdGUgd2hpY2ggdHJpZ2dlcnMgdGhpcyBp
bnRlcnJ1cHQuCgpJJ3ZlIHByZXBhcmVkIGEgcGF0Y2ggd2hpY2ggcmVhZHMgdGhlIGluaXRpYWwg
c3RhdGUgYWZ0ZXIgdGhlIGRlYm91bmNlCmludGVydmFsIG9uIHByb2JlIHRvIGVuc3VyZSBvbmx5
IHJlYWwgYnV0dG9uIHByZXNzZXMgd2lsbCB0cmlnZ2VyIGFuCmV2ZW50LiBJIHdpbGwgc2VuZCB0
aGlzIHBhdGNoIHNob3J0bHkuCgpCZXN0IHdpc2hlcwpEYXZpZAoKPiAKPiBUaGFua3MuCj4gCj4g
LS0geW5lenoKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
