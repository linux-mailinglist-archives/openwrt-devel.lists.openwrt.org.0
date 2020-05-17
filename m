Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958CD1D6C3C
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 21:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fd8YenOuUCnxoIuqoPmGzaiE0laqIo1ioYm2N4evtHM=; b=OFfeCD/g9EBZmE
	3VWaZevxiSni1l8w3tF7n99LinuqxPVE2mA6aCh3ftJ9Jjs5meBQVDSqPCNNQL26rleYykVnWWOUS
	FNcwmHnAtTYU96eMaJ0WgLya3FQLRBMQ37CZ03xdbrmAqtXtPTohwcJSjidEyIreyOFU87lzHZSCf
	gFe24jHpBHjOGpcIeYhC85PZOXVTTIY1LrMiVdNzzkuk28I0+QBZy37brk6raUJDad7XqquCi6V3V
	GiJyMOLnhd9bSCR1cQ3CdC8dI4+FUuyOdtN5lg5NwxgmXgxj+R7pnu7rwzrfBgI+uLAop4be73EWq
	8aw32IdeJCW1DLaWeFMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaOuT-0005AH-JH; Sun, 17 May 2020 19:25:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaOuA-0004Vo-N3
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 19:25:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id u35so3737382pgk.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 May 2020 12:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=r72X7qV8SlipPwFN16wXRXnalTjGaJB727SIoU/4tGA=;
 b=oJnrKqfBI0zY9HVJ++24wI+fA7htwtVpnJgwdX9D2yuWDnM5BPz1ilyBY5dpttIgZ0
 ycgTC/SnJLnbqdH6Mewyf0PQCsnTN7KQhPiXwpplnTXhpOOJTvcQ7lvXPyaIJsZTxNXl
 TFyq8d+PgmE4ZaGRkrxFbZh3072Z5y7A/uJ0IgNNhRGbBZ24PMTUjaWUoXx8INwyWnst
 I8Eaa9ghs5+Wr91o86nAB9WphCYLC6RlP4HDo1yUGBiPJIVSSe5TusAM/cRRwsTC3tLX
 Zf6VEHDG9VmTrO3PP/9qviflWyAZtJENheMVVfu9ga14KufJUxZGHWj5Lb9qaWIaskEV
 Zg7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=r72X7qV8SlipPwFN16wXRXnalTjGaJB727SIoU/4tGA=;
 b=cnmoMvcO0Q3uVWWaAIXrRoxG5m6BsWCpDc2q69UAdvPBSLjYDdpmfwgbW8QJse1cve
 ReQGdkhpY28B9xrBTY99qLl3kJhCTTk7D4+/VAUVFPcdo3wboL7iHCx1hiSzpUSkkW3U
 PYZq+ju0VmmK3Up38y5UZUUGfOoVFK6BPHfkbheGCEt8znnh+RUxvzxmdxNVNsanQC1u
 TSlJcgFAcohVW18t51huXJfhgXb5aMgdTycv4SdUggJDA5QHWIwy9DCObIbTR2W4iRyy
 8UP8ULoFnYfivvKFpP3ACC/0WvsRE0x3Ir8jIKx7UaabSbspkZXL9SETi1refv8BVNk7
 I9dQ==
X-Gm-Message-State: AOAM5332tF+LekHWsZh8TQ6Ldh2JiicKP0geV8bihhXge4ZupmQD0b3+
 e7/CgsVcaxvK9FUJF4+xy7Y=
X-Google-Smtp-Source: ABdhPJyOxFdv2KgQFpHKMOyBLnjQLVMfh5wdCKEzGPBKO8WholGKt5OroaOo5T7gvzuj/fDDeTVbGg==
X-Received: by 2002:a62:f908:: with SMTP id o8mr13289298pfh.170.1589743497278; 
 Sun, 17 May 2020 12:24:57 -0700 (PDT)
Received: from ?IPv6:2002:4c0e:6de8:0:6516:9fe9:ae64:58be?
 ([2002:4c0e:6de8:0:6516:9fe9:ae64:58be])
 by smtp.gmail.com with ESMTPSA id a2sm6786230pfl.28.2020.05.17.12.24.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 May 2020 12:24:56 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 17 May 2020 12:24:55 -0700
Message-Id: <B359F61B-3B63-4B37-955B-F67BC99CCC3E@gmail.com>
References: <96937b728d9ddd55df3cfdb6e3816cff3f6fd392.1589396871.git.mschiffer@universe-factory.net>
In-Reply-To: <96937b728d9ddd55df3cfdb6e3816cff3f6fd392.1589396871.git.mschiffer@universe-factory.net>
To: Matthias Schiffer <mschiffer@universe-factory.net>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_122500_418351_65ACAEE3 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] tools: add zstd
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

Cgo+IE9uIE1heSAxMywgMjAyMCwgYXQgMTI6MjEgUE0sIE1hdHRoaWFzIFNjaGlmZmVyIDxtc2No
aWZmZXJAdW5pdmVyc2UtZmFjdG9yeS5uZXQ+IHdyb3RlOgo+IAo+IO+7v1NpZ25lZC1vZmYtYnk6
IE1hdHRoaWFzIFNjaGlmZmVyIDxtc2NoaWZmZXJAdW5pdmVyc2UtZmFjdG9yeS5uZXQ+Cj4gLS0t
Cj4gdG9vbHMvenN0ZC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMjAgKysr
KysrCj4gLi4ucmUtcG9ydGFibGUtaGVhZGVyLXByZWZpeC11c2FnZS0xOTg3LnBhdGNoIHwgNjEg
KysrKysrKysrKysrKysrKysrKwo+IDIgZmlsZXMgY2hhbmdlZCwgODEgaW5zZXJ0aW9ucygrKQo+
IGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy96c3RkL01ha2VmaWxlCj4gY3JlYXRlIG1vZGUgMTAw
NjQ0IHRvb2xzL3pzdGQvcGF0Y2hlcy8wMDAxLWJ1aWxkLWlzc3VlLU1vcmUtcG9ydGFibGUtaGVh
ZGVyLXByZWZpeC11c2FnZS0xOTg3LnBhdGNoCj4gCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3pzdGQv
TWFrZWZpbGUgYi90b29scy96c3RkL01ha2VmaWxlCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwMDAuLmRjMGJmOGZmYWZmOAo+IC0tLSAvZGV2L251bGwKPiArKysgYi90
b29scy96c3RkL01ha2VmaWxlCj4gQEAgLTAsMCArMSwyMCBAQAo+ICtpbmNsdWRlICQoVE9QRElS
KS9ydWxlcy5tawo+ICsKPiArUEtHX05BTUU6PXpzdGQKPiArUEtHX1ZFUlNJT046PTEuNC40Cj4g
Kwo+ICtQS0dfU09VUkNFOj0kKFBLR19OQU1FKS0kKFBLR19WRVJTSU9OKS50YXIuZ3oKPiArUEtH
X1NPVVJDRV9VUkw6PUBHSVRIVUIvZmFjZWJvb2svenN0ZC9yZWxlYXNlcy9kb3dubG9hZC92JChQ
S0dfVkVSU0lPTikKPiArUEtHX0hBU0g6PWEzNjRmNTE2MmM3ZDFhNDU1Y2M5MTVlOGUzY2Y1ZjRi
ZDhiNzVkMDliYzBmNTM5NjViMGM5Y2ExMzgzYzUyYzgKPiArCj4gK1BLR19MSUNFTlNFOj1CU0Qt
My1DbGF1c2UKPiArUEtHX0xJQ0VOU0VfRklMRVM6PUxJQ0VOU0UKPiArUEtHX0NQRV9JRDo9Y3Bl
Oi9hOmZhY2Vib29rOnpzdGFuZGFyZAo+ICsKPiArSE9TVF9CVUlMRF9QQVJBTExFTDo9MQo+ICsK
PiAraW5jbHVkZSAkKElOQ0xVREVfRElSKS9ob3N0LWJ1aWxkLm1rCkNNYWtlIGlzIGFsc28gYXZh
aWxhYmxlIHdpdGggemVzdHMgdW5kZXIgdGhlIGNvbnRyaWIgc2VjdGlvbi4gQm90aCBhcmUgc3Vw
cG9ydGVkLgo+ICsKPiArSE9TVF9NQUtFX0ZMQUdTID0gUFJFRklYPSQoSE9TVF9CVUlMRF9QUkVG
SVgpCj4gKwo+ICskKGV2YWwgJChjYWxsIEhvc3RCdWlsZCkpCj4gZGlmZiAtLWdpdCBhL3Rvb2xz
L3pzdGQvcGF0Y2hlcy8wMDAxLWJ1aWxkLWlzc3VlLU1vcmUtcG9ydGFibGUtaGVhZGVyLXByZWZp
eC11c2FnZS0xOTg3LnBhdGNoIGIvdG9vbHMvenN0ZC9wYXRjaGVzLzAwMDEtYnVpbGQtaXNzdWUt
TW9yZS1wb3J0YWJsZS1oZWFkZXItcHJlZml4LXVzYWdlLTE5ODcucGF0Y2gKPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNmQ3NDNhYTM4NTUyCj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL3Rvb2xzL3pzdGQvcGF0Y2hlcy8wMDAxLWJ1aWxkLWlzc3VlLU1vcmUtcG9y
dGFibGUtaGVhZGVyLXByZWZpeC11c2FnZS0xOTg3LnBhdGNoCj4gQEAgLTAsMCArMSw2MSBAQAo+
ICtGcm9tIDA2YTU3Y2Y1N2UzYzRlODg3Y2FkY2Y2ODhlMzA4MTE1NGYzZjZkYjQgTW9uIFNlcCAx
NyAwMDowMDowMCAyMDAxCj4gK01lc3NhZ2UtSWQ6IDwwNmE1N2NmNTdlM2M0ZTg4N2NhZGNmNjg4
ZTMwODExNTRmM2Y2ZGI0LjE1ODkzOTI0NjMuZ2l0Lm1zY2hpZmZlckB1bml2ZXJzZS1mYWN0b3J5
Lm5ldD4KPiArRnJvbTogQmltYmEgU2hyZXN0aGEgPGJpbWJhc2hyZXN0aGFAZmIuY29tPgo+ICtE
YXRlOiBUaHUsIDYgRmViIDIwMjAgMTQ6MTA6NTEgLTA4MDAKPiArU3ViamVjdDogW1BBVENIXSBb
YnVpbGQtaXNzdWVdIE1vcmUgcG9ydGFibGUgaGVhZGVyIHByZWZpeCB1c2FnZSAoIykgKCMxOTg3
KQo+ICsKPiArKiBtYWtlIDQuMyBidWlsZCBpc3N1ZSBmaXgKPiArCj4gKyogQ2hhbmdpbmcgaGVh
ZGVyIG5hbWUgYW5kIGFkZGluZyBjb21tZW50Cj4gKy0tLQo+ICsgcHJvZ3JhbXMvTWFrZWZpbGUg
fCAxMSArKysrKysrLS0tLQo+ICsgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPiArCj4gK2RpZmYgLS1naXQgYS9wcm9ncmFtcy9NYWtlZmlsZSBiL3Byb2dy
YW1zL01ha2VmaWxlCj4gK2luZGV4IGI3NTMxNGE4M2Y0My4uYTllZTNjYjUzMTFiIDEwMDY0NAo+
ICstLS0gYS9wcm9ncmFtcy9NYWtlZmlsZQo+ICsrKysgYi9wcm9ncmFtcy9NYWtlZmlsZQo+ICtA
QCAtOTQsOSArOTQsMTIgQEAgZW5kaWYKPiArIAo+ICsgVk9JRCA9IC9kZXYvbnVsbAo+ICsgCj4g
KysjIE1ha2UgNC4zIGRvZXNuJ3Qgc3VwcG9ydCAnXCMnIGFueW1vcmUgKGh0dHBzOi8vbHduLm5l
dC9BcnRpY2xlcy84MTAwNzEvKQo+ICsrTlVNX1NZTUJPTCA6PSBcIwo+ICsrCj4gKyAjIHRocmVh
ZCBkZXRlY3Rpb24KPiArIE5PX1RIUkVBRF9NU0cgOj0gPT0+IG5vIHRocmVhZHMsIGJ1aWxkaW5n
IHdpdGhvdXQgbXVsdGl0aHJlYWRpbmcgc3VwcG9ydAo+ICstSEFWRV9QVEhSRUFEIDo9ICQoc2hl
bGwgcHJpbnRmICdcI2luY2x1ZGUgPHB0aHJlYWQuaD5cbmludCBtYWluKHZvaWQpIHsgcmV0dXJu
IDA7IH0nID4gaGF2ZV9wdGhyZWFkLmMgJiYgJChDQykgJChGTEFHUykgLW8gaGF2ZV9wdGhyZWFk
JChFWFQpIGhhdmVfcHRocmVhZC5jIC1wdGhyZWFkIDI+ICQoVk9JRCkgJiYgcm0gaGF2ZV9wdGhy
ZWFkJChFWFQpICYmIGVjaG8gMSB8fCBlY2hvIDA7IHJtIGhhdmVfcHRocmVhZC5jKQo+ICsrSEFW
RV9QVEhSRUFEIDo9ICQoc2hlbGwgcHJpbnRmICckKE5VTV9TWU1CT0wpaW5jbHVkZSA8cHRocmVh
ZC5oPlxuaW50IG1haW4odm9pZCkgeyByZXR1cm4gMDsgfScgPiBoYXZlX3B0aHJlYWQuYyAmJiAk
KENDKSAkKEZMQUdTKSAtbyBoYXZlX3B0aHJlYWQkKEVYVCkgaGF2ZV9wdGhyZWFkLmMgLXB0aHJl
YWQgMj4gJChWT0lEKSAmJiBybSBoYXZlX3B0aHJlYWQkKEVYVCkgJiYgZWNobyAxIHx8IGVjaG8g
MDsgcm0gaGF2ZV9wdGhyZWFkLmMpCj4gKyBIQVZFX1RIUkVBRCA6PSAkKHNoZWxsIFsgIiQoSEFW
RV9QVEhSRUFEKSIgLWVxICIxIiAtbyAtbiAiJChmaWx0ZXIgV2luZG93cyUsJChPUykpIiBdICYm
IGVjaG8gMSB8fCBlY2hvIDApCj4gKyBpZmVxICgkKEhBVkVfVEhSRUFEKSwgMSkKPiArIFRIUkVB
RF9NU0cgOj0gPT0+IGJ1aWxkaW5nIHdpdGggdGhyZWFkaW5nIHN1cHBvcnQKPiArQEAgLTEwOCw3
ICsxMTEsNyBAQCBlbmRpZgo+ICsgCj4gKyAjIHpsaWIgZGV0ZWN0aW9uCj4gKyBOT19aTElCX01T
RyA6PSA9PT4gbm8gemxpYiwgYnVpbGRpbmcgenN0ZCB3aXRob3V0IC5neiBzdXBwb3J0Cj4gKy1I
QVZFX1pMSUIgOj0gJChzaGVsbCBwcmludGYgJ1wjaW5jbHVkZSA8emxpYi5oPlxuaW50IG1haW4o
dm9pZCkgeyByZXR1cm4gMDsgfScgPiBoYXZlX3psaWIuYyAmJiAkKENDKSAkKEZMQUdTKSAtbyBo
YXZlX3psaWIkKEVYVCkgaGF2ZV96bGliLmMgLWx6IDI+ICQoVk9JRCkgJiYgcm0gaGF2ZV96bGli
JChFWFQpICYmIGVjaG8gMSB8fCBlY2hvIDA7IHJtIGhhdmVfemxpYi5jKQo+ICsrSEFWRV9aTElC
IDo9ICQoc2hlbGwgcHJpbnRmICckKE5VTV9TWU1CT0wpaW5jbHVkZSA8emxpYi5oPlxuaW50IG1h
aW4odm9pZCkgeyByZXR1cm4gMDsgfScgPiBoYXZlX3psaWIuYyAmJiAkKENDKSAkKEZMQUdTKSAt
byBoYXZlX3psaWIkKEVYVCkgaGF2ZV96bGliLmMgLWx6IDI+ICQoVk9JRCkgJiYgcm0gaGF2ZV96
bGliJChFWFQpICYmIGVjaG8gMSB8fCBlY2hvIDA7IHJtIGhhdmVfemxpYi5jKQo+ICsgaWZlcSAo
JChIQVZFX1pMSUIpLCAxKQo+ICsgWkxJQl9NU0cgOj0gPT0+IGJ1aWxkaW5nIHpzdGQgd2l0aCAu
Z3ogY29tcHJlc3Npb24gc3VwcG9ydAo+ICsgWkxJQkNQUCA9IC1EWlNURF9HWkNPTVBSRVNTIC1E
WlNURF9HWkRFQ09NUFJFU1MKPiArQEAgLTExOSw3ICsxMjIsNyBAQCBlbmRpZgo+ICsgCj4gKyAj
IGx6bWEgZGV0ZWN0aW9uCj4gKyBOT19MWk1BX01TRyA6PSA9PT4gbm8gbGlibHptYSwgYnVpbGRp
bmcgenN0ZCB3aXRob3V0IC54ei8ubHptYSBzdXBwb3J0Cj4gKy1IQVZFX0xaTUEgOj0gJChzaGVs
bCBwcmludGYgJ1wjaW5jbHVkZSA8bHptYS5oPlxuaW50IG1haW4odm9pZCkgeyByZXR1cm4gMDsg
fScgPiBoYXZlX2x6bWEuYyAmJiAkKENDKSAkKEZMQUdTKSAtbyBoYXZlX2x6bWEkKEVYVCkgaGF2
ZV9sem1hLmMgLWxsem1hIDI+ICQoVk9JRCkgJiYgcm0gaGF2ZV9sem1hJChFWFQpICYmIGVjaG8g
MSB8fCBlY2hvIDA7IHJtIGhhdmVfbHptYS5jKQo+ICsrSEFWRV9MWk1BIDo9ICQoc2hlbGwgcHJp
bnRmICckKE5VTV9TWU1CT0wpaW5jbHVkZSA8bHptYS5oPlxuaW50IG1haW4odm9pZCkgeyByZXR1
cm4gMDsgfScgPiBoYXZlX2x6bWEuYyAmJiAkKENDKSAkKEZMQUdTKSAtbyBoYXZlX2x6bWEkKEVY
VCkgaGF2ZV9sem1hLmMgLWxsem1hIDI+ICQoVk9JRCkgJiYgcm0gaGF2ZV9sem1hJChFWFQpICYm
IGVjaG8gMSB8fCBlY2hvIDA7IHJtIGhhdmVfbHptYS5jKQo+ICsgaWZlcSAoJChIQVZFX0xaTUEp
LCAxKQo+ICsgTFpNQV9NU0cgOj0gPT0+IGJ1aWxkaW5nIHpzdGQgd2l0aCAueHovLmx6bWEgY29t
cHJlc3Npb24gc3VwcG9ydAo+ICsgTFpNQUNQUCA9IC1EWlNURF9MWk1BQ09NUFJFU1MgLURaU1RE
X0xaTUFERUNPTVBSRVNTCj4gK0BAIC0xMzAsNyArMTMzLDcgQEAgZW5kaWYKPiArIAo+ICsgIyBs
ejQgZGV0ZWN0aW9uCj4gKyBOT19MWjRfTVNHIDo9ID09PiBubyBsaWJsejQsIGJ1aWxkaW5nIHpz
dGQgd2l0aG91dCAubHo0IHN1cHBvcnQKPiArLUhBVkVfTFo0IDo9ICQoc2hlbGwgcHJpbnRmICdc
I2luY2x1ZGUgPGx6NGZyYW1lLmg+XG5cI2luY2x1ZGUgPGx6NC5oPlxuaW50IG1haW4odm9pZCkg
eyByZXR1cm4gMDsgfScgPiBoYXZlX2x6NC5jICYmICQoQ0MpICQoRkxBR1MpIC1vIGhhdmVfbHo0
JChFWFQpIGhhdmVfbHo0LmMgLWxsejQgMj4gJChWT0lEKSAmJiBybSBoYXZlX2x6NCQoRVhUKSAm
JiBlY2hvIDEgfHwgZWNobyAwOyBybSBoYXZlX2x6NC5jKQo+ICsrSEFWRV9MWjQgOj0gJChzaGVs
bCBwcmludGYgJyQoTlVNX1NZTUJPTClpbmNsdWRlIDxsejRmcmFtZS5oPlxuXCNpbmNsdWRlIDxs
ejQuaD5cbmludCBtYWluKHZvaWQpIHsgcmV0dXJuIDA7IH0nID4gaGF2ZV9sejQuYyAmJiAkKEND
KSAkKEZMQUdTKSAtbyBoYXZlX2x6NCQoRVhUKSBoYXZlX2x6NC5jIC1sbHo0IDI+ICQoVk9JRCkg
JiYgcm0gaGF2ZV9sejQkKEVYVCkgJiYgZWNobyAxIHx8IGVjaG8gMDsgcm0gaGF2ZV9sejQuYykK
PiArIGlmZXEgKCQoSEFWRV9MWjQpLCAxKQo+ICsgTFo0X01TRyA6PSA9PT4gYnVpbGRpbmcgenN0
ZCB3aXRoIC5sejQgY29tcHJlc3Npb24gc3VwcG9ydAo+ICsgTFo0Q1BQID0gLURaU1REX0xaNENP
TVBSRVNTIC1EWlNURF9MWjRERUNPTVBSRVNTCj4gKy0tIAo+ICsyLjI2LjIKPiArCj4gLS0gCj4g
Mi4yNi4yCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
