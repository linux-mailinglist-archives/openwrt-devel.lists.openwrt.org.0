Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69D513820C
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Jan 2020 16:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bAi+jidE5kqKkJb4uW7BNw42AFNoBRTNRZ+jJL/yzAs=; b=fTWIlEGEUmvrEJ/JVeUDIrx+5
	p+AVUGa7o7SRj7SXN1gpnSa7+ahtvbtl30eZauT7+pySf6Hm/d+20TGY7CPMKDacBO9JkXJQIO1oi
	k/e9KGTqp6MrfbeM/63ttwh731i0qNpEFO6lJeTh/QCZOUNs3LXrgAmDX5oTeaM2WO/dWqD7sStxS
	aby/6ju3oCrLAkKQHMAGtsTSWMytwEH0ex3BrRGNXQUTSx8XqGye7qitdpCzgdCqN73+9knJDdPjL
	pog2sGaTIwOWmPc6DUDR9AJRMtVCxXBNZuoweNIZVHwVrHoAXu/JGW5h7iWc8lNsKKoJeqxihotNR
	sJQ0wywIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqInP-0005vz-I8; Sat, 11 Jan 2020 15:35:27 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqInJ-0005vS-GZ
 for openwrt-devel@lists.openwrt.org; Sat, 11 Jan 2020 15:35:23 +0000
Received: by mail-wr1-x434.google.com with SMTP id q6so4469789wro.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 11 Jan 2020 07:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=iO71kL3UQA4t00kCTNfm2hhKNISn12ywkVsNuMixn28=;
 b=rOxOapILaICuj784C8JyNLvR8yLtUz7bggfP46JN02fntVPkzi8w/nomVbI3kMQPL2
 gEo7XIV7Uk+YEF1XgTns+h0YXw6Ta5JVbAjCi0N7Bn+Sye1FVx9qJ1ZBAv9pVZ4UDyGq
 rNt8RtgogCgMq+uF7ySEDuX9U54uDpk2YR0JTzkLaTNRzrH2wWCVgEXtCedC01ioXK1k
 PAIKtG2YpmW3vNUuUHlTfKyofXIJkMrfVBs/oovCvSWoHlfLcb5S9XglOEqY/UirKE0L
 s4O2YR/XtMNHLxBpgBfK4lbmi+pptD9wo6oJqjVkYy35DP/2DizrsG4mepAa0MY1Csqn
 DnXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iO71kL3UQA4t00kCTNfm2hhKNISn12ywkVsNuMixn28=;
 b=p8L91TjAPPb96ULpPUINXmxo24W4/wFtrIGmCXa29z38ZcMrZF+f3S9q0lBNbArgAR
 o4X5mBVy0uQVfCLWPXsoJXe5nf6dkiN3H3IqVh1r6S4UjKpJVTm/BkpTfZc2WzZxN7do
 QXwW2soThzNEvOyKdgwobeUpyieCgzTAR3gPp8ejOBvFU3Aa5TITSjd548JcMedQzT3n
 JyHK+EYEKEndBt/Cfcui7vlVeVCxY/Jm80Io+Ex+lfFbBKs1erS+zjRPSUnCmhySVYnQ
 XyUhUKiU1Aja8djm44SHYzE88GR5b0BT8OIruOpe0wwet6JEKk9ymI6RVJsUiedjUHPz
 B9YQ==
X-Gm-Message-State: APjAAAWczMfSRQt46+fs9BnKKwcvt0xkba7UeZYltIWxczLZXDcdj+Xz
 dGlorwM45WpxQ3yLDEDhdqfdbmkBRRQ=
X-Google-Smtp-Source: APXvYqzPH5Z/wGS/GPVSdU6KxEnCtUfaNqnQgEKn1kFjRamkqooBi79agAu80m0f3z1nDZSHZ9T5rw==
X-Received: by 2002:a05:6000:367:: with SMTP id
 f7mr388702wrf.174.1578756916818; 
 Sat, 11 Jan 2020 07:35:16 -0800 (PST)
Received: from [192.168.1.230] ([213.152.162.94])
 by smtp.gmail.com with ESMTPSA id p17sm6682495wmk.30.2020.01.11.07.35.15
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Jan 2020 07:35:16 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <CAJq09z7Li_ddnDw34AtixVDkYdPxOZoBa4MAUoVa5P5kvMSM_A@mail.gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <ebca140d-7f6b-633d-e264-8caf33a42aa1@gmail.com>
Date: Sat, 11 Jan 2020 16:35:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAJq09z7Li_ddnDw34AtixVDkYdPxOZoBa4MAUoVa5P5kvMSM_A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_073521_553365_34057F1B 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: Re: [OpenWrt-Devel] ToH dump missing HW version
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

CgpPbiAxMC8wMS8yMCAyMTo0MCwgTHVpeiBBbmdlbG8gRGFyb3MgZGUgTHVjYSB3cm90ZToKPiBI
ZWxsbywKPiAKPiBJIHdhcyB1c2luZyBodHRwczovL29wZW53cnQub3JnL19tZWRpYS90b2hfZHVt
cF90YWJfc2VwYXJhdGVkX2Nzdi56aXAgCj4gZnJvbSBodHRwczovL29wZW53cnQub3JnL3N1cHBv
cnRlZF9kZXZpY2VzIGFuZCBpdCBpcyBtaXNzaW5nIHRoZSAKPiBoYXJkd2FyZSB2ZXJzaW9uLgo+
IEl0IGlzIGFsc28gbWlzc2luZyB0aGUgInVuc3VwcG9ydGVkIGZlYXR1cmVzIi4gQm90aCBhcmUg
cXVpdGUgaW1wb3J0YW50IAo+IGZvciBzZWxlY3RpbmcgYSBkZXZpY2UuCj4gV2lraSBkeW5hbWlj
IHRhYmxlIGRvZXMgaW5jbHVkZSB0aGVtLgo+IAo+IENhbiBzb21lb25lIGFkZCBpdD8KPiAKPiBS
ZWdhcmRzLAo+IAo+IC0tLQo+ICDCoCDCoMKgIEx1aXogQW5nZWxvIERhcm9zIGRlIEx1Y2EKPiBs
dWl6bHVjYUBnbWFpbC5jb20gPG1haWx0bzpsdWl6bHVjYUBnbWFpbC5jb20+Cj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+IAoKQWRk
ZWQgdGhhdCBhbmQgb3RoZXIgZmllbGRzIHNvbWVvbmUgbm90aWNlZCB3ZXJlIG1pc3NpbmcgaW4g
dGhlIGZvcnVtCmh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9oYXJkd2FyZS1kYXRhYmFzZS1j
c3YtZHVtcC1pbmNvbXBsZXRlLzUxODQzLzcKCi1BbGJlcnRvCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
