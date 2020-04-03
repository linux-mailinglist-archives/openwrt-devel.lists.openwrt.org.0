Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E3819D49B
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 12:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EvR9R3XIaMvSQMk4FuNDnbSfNd2R0zcYjoJnhuweip4=; b=WCEb+AdOsZEzvK1TfaULhht+B
	t7oai4Ua3+DQMkGmVowr7xVmfPQjU5TmkBkgYtofs5p5MnAZfNLUDZVGDr7my+ttVgcbqy+axOLMv
	9APvAJ7eraMWkDuY3biKVQoYiRdy/RZFSJ8yLoEFI64Qg0kRQxhM8bLuCpVDsRvj4VM9Idc6Jcjej
	XZ8AKoaGJV3VX6OOWFMyZfVkQNWoyTu5W6/tQWSduWDAEtUBIWjxWMNkKe8ok1pyv3YknHuBPF1S5
	tdq6hfld1I3T7KpZA+x9/NeEJmi+lWR7WUe55B+8bYSUsxCx4AvS2bV13VPlsyDhxHz0hMbcuud/Y
	bKFLaxAIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJEK-0004Fh-Mg; Fri, 03 Apr 2020 10:07:16 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJED-0004FC-No
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 10:07:11 +0000
Received: by mail-lf1-x142.google.com with SMTP id h6so5303097lfp.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 Apr 2020 03:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=thhgAAsJPkbY021vthKdFbjr++mYr9bMZ2jhewxyZAc=;
 b=O5jeeRJoZdE93lhC9aW9/wQY0BDda3sHUst/ugepMtHS1MSbtR7YLzKCeibEptL8Ia
 Vh/zRyWo2dB3djiZlcESgnS4aF+KZebgmrxGOLJeaz8JvC30Npwi9LQwfaickZe2lOfU
 LImmOE2ydDD0fcWnQYpoDg6TP7gySlh1h9yjuozsdnD3QBH6aF70UZpyajfcAa4mCeED
 LTfU4V8Ze+uOAphotZOvYR1kH7DpiGa2Mwr9cya3YBiTHJ6OBGbJPyJBtDKAirCLrWqO
 mGMGYj5qAibCBhN2aSSeHBmDPsjxlc2zxBCy6S4WH3iO5Y/5n0pMIsokBB800++vMVDF
 RFXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=thhgAAsJPkbY021vthKdFbjr++mYr9bMZ2jhewxyZAc=;
 b=CxlU0QiuYcngTq++c/SGuGZOvAtJCJVKnfuV6g9y3RxC/k/eJ2zmYXze4S3+TO/RWQ
 Lg5pvEXVKyYUef9VBd2RmD4ypOuq7mlCBibQILb5FoMvOoPd6E5eh9966Ioio4eaR/Kj
 murrpbWW3pkwGuSPcDhmUzFOLHz2G/xz7w7pZQMI2xORIwmOmhhPxmRlic9TlnYatFs7
 XmMrikLsLez9f9UEZPRBMHPxBajRs1geIAITA1mfSdp49LFitjTl7Y76runxHfZa7n1r
 SKi75ADbdLbNTLn9RVQ2h0m5PjCSewARpziLkMq/FwLoT7+ksAZ9j6BFGH9hJbdc1E9T
 DqXg==
X-Gm-Message-State: AGi0PubfnjTDwJIwlv/NlsIZ8F1ZtkOskbuR2NMJjWTmFRhY3KzUzV4U
 avvGLLr2zlSeTSjSVzs3pZfv4986
X-Google-Smtp-Source: APiQypJwo2Pa5G1++rEAM+SRMyLRymor3YuhslutK7oJm4O4/TLhBU7VaUXLp3uuRLFWJ+bSbUpfgg==
X-Received: by 2002:ac2:515d:: with SMTP id q29mr967875lfd.210.1585908427231; 
 Fri, 03 Apr 2020 03:07:07 -0700 (PDT)
Received: from [172.18.1.84] (209.89-10-150.nextgentel.com. [89.10.150.209])
 by smtp.gmail.com with ESMTPSA id d2sm5538960lfj.67.2020.04.03.03.07.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Apr 2020 03:07:06 -0700 (PDT)
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>,
 David Bauer <mail@david-bauer.net>
References: <20200402195359.51545-1-mail@david-bauer.net>
 <87k12wx6tm.fsf@miraculix.mork.no>
From: Magnus Kroken <mkroken@gmail.com>
Message-ID: <e74d668d-d2ad-8312-b5c0-7e8e2e9bbf02@gmail.com>
Date: Fri, 3 Apr 2020 12:07:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <87k12wx6tm.fsf@miraculix.mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_030709_773660_962BD0E0 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mkroken[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgYWxsCgpPbiAwMy4wNC4yMDIwIDExOjIxLCBCasO4cm4gTW9yayB3cm90ZToKPiBEYXZpZCBC
YXVlciA8bWFpbEBkYXZpZC1iYXVlci5uZXQ+IHdyaXRlczoKPiAKPj4gQXMgdGhlIHJlcG9ydGVk
IG1ham9yIGJ1Z3MgYXJlIGlyb25lZCBvdXQsIHN3aXRjaCB0byB0aGUgbmV3IGtlcm5lbCB0bwo+
PiBiZWdpbiB0ZXN0aW5nIHdpdGggYSBicm9hZGVyIGF1ZGllbmNlLgo+IAo+IAo+IEhtbS4uLiBJ
IHdvbmRlciBpZiB5b3UgbWlnaHQgd2FudCB0byBob2xkIGJhY2sgb24gdGhhdCBmb3IgYSB3aGls
ZS4KPiAKPiBJIGhhdmUgbm8gdXNlZnVsIGluZm8geWV0IHNpbmNlIEkgZG9uJ3QgaGF2ZSBjb25z
b2xlIGFjY2VzcyBvbiB0aGlzCj4gZGV2aWNlLCBidXQgSSBqdXN0IGxvc3QgbmV0d29yayBhY2Nl
c3MgdG8gYSBVbmlGaSBBUCBBQyBQUk8gYWZ0ZXIgdHJ5aW5nCj4gb3V0IGN1cnJlbnQgbWFzdGVy
IChmY2QxNDAxNzAwN2QpLgoKSSBoZWxkIGJhY2sgYW5kIHBsYW5uZWQgdG8gcmVwb3J0IHdoZW4g
SSBoYXZlIGEgbG9nIGZyb20gc2VyaWFsLCBidXQgSSdtIApzZW5kaW5nIHRoaXMgbm93IHNpbmNl
IHRoaXMgc291bmRzIHNpbWlsYXIgdG8gbXkgZXhwZXJpZW5jZS4KCkkndmUgdGVzdGVkIDUuNCBv
biBteSB0bC13ZHI0MzAwdjEsIGFuZCBpdCBnb3Qgc3R1Y2sgaW4gcmVib290IGxvb3AgCnJlY2Vu
dGx5LiBJIHBsYW4gdG8gZ2V0IGEgc2VyaWFsIGNvbm5lY3Rpb24gb24gaXQgdGhpcyB3ZWVrZW5k
IHRvIHNlZSAKZXhhY3RseSB3aGF0IGhhcHBlbnMsIGJ1dCB3aXRoIHRoZSBlYXN5IFRGVFAgcmVj
b3ZlcnkgSSd2ZSBiaXNlY3RlZCBpdCAKdG8gdGhlIEdDQyA4LjQgdXBkYXRlLiBEb2luZyBhIGRp
cmNsZWFuIGJldHdlZW4gZWFjaCB0ZXN0LCAKaHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3Bl
bndydC9vcGVud3J0LmdpdDthPWNvbW1pdDtoPWRiNzAwNzc2NjhlNzU3YTI3ZjQxZDljYjNjODRm
MjhlYTdkNGMyMmUgCmlzIHRoZSBmaXJzdCBiYWQgY29tbWl0LiBUaGlzIGlzIHRoZSBzaW1wbGUg
Y29uZmlnIEkndmUgdXNlZCBmb3IgdGVzdGluZzoKCkNPTkZJR19UQVJHRVRfYXRoNzk9eQpDT05G
SUdfVEFSR0VUX2F0aDc5X2dlbmVyaWM9eQpDT05GSUdfVEFSR0VUX2F0aDc5X2dlbmVyaWNfREVW
SUNFX3RwbGlua190bC13ZHI0MzAwLXYxPXkKQ09ORklHX0xJTlVYXzVfND15CkNPTkZJR19URVNU
SU5HX0tFUk5FTD15CgpUZXN0aW5nIGlzIG9uIGhvbGQgYXMgdGhlIGRldmljZSBpcyBpbiBzZXJ2
aWNlIHJpZ2h0IG5vdywgYnV0IEknZCAKYXBwcmVjaWF0ZSBhbnkgaWRlYXMgZm9yIGZ1cnRoZXIg
dGVzdGluZy4KCi9NYWdudXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
