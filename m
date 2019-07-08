Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A0B61FC8
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 15:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA/cDC6mOhHv7AgCXkWtySJ9BSnmiHVZ8/mmPwbh9YY=; b=r/Iyv46a68Wmxv
	91ojZOZDAUuH2mtvHFmF5ayRU105A/fAEEprhM5fuOjs/zlNv+GWhuSVugs7iZAS5jevIIa08IQIf
	o5nh8QC9WRi9bSifrOctNNGpqJc/x/8absxy1qbrX3JzRSY3HOdmKju+F9O1xYaqcybtk+M4AI5Fh
	s3bhZcSfhYojTnNK0XaaCe7EahDqsb3XEum2RvXvl6dqkKV/mJ7/lKHb917wS9fTS7kvd6XgY3LVe
	u09WisAqY+usd/Fdj1OiLJin7WqZcydGDY/qSTNfkhEeZL9McSKc+hmKt5cCRGiSOqvo6N8kB/B+b
	pRS/418diCeml6hxMISA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkTzz-0000nY-0I; Mon, 08 Jul 2019 13:48:07 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkTzS-0000dE-EK
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jul 2019 13:47:35 +0000
Received: by mail-io1-xd2f.google.com with SMTP id j5so15967403ioj.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 08 Jul 2019 06:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UaPNFAj0ihAbUVelbwy4KKt+jteDqckyod7OY/cNOjM=;
 b=cOudfs7aArvsRwaG5CZtK+gSygCf+eiBL1N8h6JdEPSMx0z2s+cWyDyEMHls0EO0Dv
 59mOiKsmrUhFd4hNbmdf03zYK3K1ON0WJcamLrtgExFdwZF2uUvq4TGXxQWCSTbXdJA0
 Uj2B9xw6LIxjFerrPY/RN+X0lFMiWoycmPc8HqmVZZo23aXNSjLkR0aql+rfjGsexgul
 uBWIJ1KCyo6LjjvW9ZvcJIKKPnbbPC3gtDT1iJ5pMGWBmsd3bmL+2SfPMZKFGa10Za4f
 3IqA+uItB4RB9QVhbjuiJ4IlpxBZ8zisceNw3bKF63zGARFWHr9TpQqfgyYKyFgV32u5
 q0iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UaPNFAj0ihAbUVelbwy4KKt+jteDqckyod7OY/cNOjM=;
 b=NYTuNpy3u/mmSpEyiP5CsJDKlep0J3RCyyj+4iw9L5rWFWG1jb/YQdiNSFlNOctF0/
 125AzgVarUkVJO9q6EEI576Bo3rmzIFjMQs5HbIJinX075hsQ5gVY51+WahhDdk/naBD
 HzVzdfVOsRjuzIiFfErqO2+Dc+wBgVG64HNKuojjzhT3NXmWN8kKXh2PFrTfFdgyWbkM
 lhiokZz1lh2sp14u61FA7ttf9F5m1TEub+DekRb6RbAo5clhIfX3ZkqssRYpgoJLptZK
 YnqVfj1LDSyzXyXrXLUxYStDNxdd8Wtzs8EnlxVx3DERj7l0wa8fgJKpFDMpx6Wk2pQg
 /bKw==
X-Gm-Message-State: APjAAAXHYW5ORShK8ABANiwJHiRER2wHoC1ldCIE4VYh+vaZAKdB8VMT
 2W1x8Ss+k8qg/wxUbJcV10K6Syl3q4aR4Erl+0g=
X-Google-Smtp-Source: APXvYqyAJBToDg/VMcdQnPvar6EP123DWZn97vL/fR4dafegSPj36u8ux9ALdJNZCo7rmUAoYvo0pxoyc08PhimCME4=
X-Received: by 2002:a02:ab83:: with SMTP id t3mr21414989jan.133.1562593652738; 
 Mon, 08 Jul 2019 06:47:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAPxccB0X9Wy4_yfQMwWJ7Ch9zeEvPMvCTNiO7Bnp=GBJikjAqA@mail.gmail.com>
In-Reply-To: <CAPxccB0X9Wy4_yfQMwWJ7Ch9zeEvPMvCTNiO7Bnp=GBJikjAqA@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 8 Jul 2019 16:47:21 +0300
Message-ID: <CANoib0HfXsxdD4hDAPPh8r-X_eH=-+rh+t2is0du6GiczfnmCQ@mail.gmail.com>
To: Eneas Queiroz <cotequeiroz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_064734_518887_1B07F0AE 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: Re: [OpenWrt-Devel] cherry-pick wolfssl-3.15.7 update to 19.07
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyAxOS4wNyBjb21taXQgZGlkbid0IHVwZGF0ZSB0aGUgaGFzaCBpbiBNYWtlZmlsZS4gUGxl
YXNlIGZpeCBpdC4KCtC/0L0sIDgg0LjRjtC7LiAyMDE5INCzLiDQsiAxNDozOCwgRW5lYXMgUXVl
aXJveiA8Y290ZXF1ZWlyb3pAZ21haWwuY29tPjoKPgo+IENhbiBzb21lb25lIHBsZWFzZSBjaGVy
cnktcGljayB0aGlzIHRvIDE5LjA3Ogo+IDI3OTJkYWFiNWEgd29sZnNzbDogdXBkYXRlIHRvIDMu
MTUuNywgZml4IE1ha2VmaWxlCj4KPiBUaGlzIGluY2x1ZGVzIGEgZml4IGZvciBhIG1lZGl1bS1s
ZXZlbCBwb3RlbnRpYWwgY2FjaGUgYXR0YWNrIHdpdGggYQo+IHZhcmlhbnQgb2YgQmxlaWNoZW5i
YWNoZXLigJlzIGF0dGFjay4gIFBhdGNoZXMgd2VyZSByZWZyZXNoZWQuCj4gSW5jcmVhc2VkIEZQ
X01BWF9CSVRTIHRvIGFsbG93IDQwOTYtYml0IFJTQSBrZXlzLgo+IEZpeGVkIHBvbHkxMzA1IGJ1
aWxkIG9wdGlvbiwgYW5kIHNvbWUgTWFrZWZpbGUgdXBkYXRlcy4KPgo+IFNpZ25lZC1vZmYtYnk6
IEVuZWFzIFUgZGUgUXVlaXJveiA8Y290ZXF1ZWlyb3pAZ21haWwuY29tPgo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
