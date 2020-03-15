Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8C6185C50
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 13:21:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HL14igzxuiRmeruHudhUS7O9RXkDqui0A1U6IN1jI3U=; b=f0Cz+mOT0T+cwQ
	E8JBdwRf0HqcPOggsBdjsiR5zsartVg/AGqnl2JBvY0RY/nmIjpBkOEvS5ZaO+ZmdnZ29WspX+YEa
	L8k4k88uPdyyMU+u8pNOfOFn9UHJHwiNh4Wp0UHHWBXg8lvS+gCOfRpnR9KyEnLVSeosVHSjPo18F
	HGvbVwyegfjIOw0ELt0ltPxkJ1yJPieCr3gwELFQXK30jEUzc1tANaEZmCmXAZIIdF5vEu3bapll6
	eqbLqI5sTrgLP8NsWdNSqJsrBzc6QRzoueV/0cIslChjzLxHG4olWS+uBf9qrPgkTdXfecPjZdiiS
	ON+vv+u+GyyuGpNSv4IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDSGx-0000Xs-IG; Sun, 15 Mar 2020 12:21:39 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDSGn-0000XV-Rs
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 12:21:31 +0000
Received: by mail-ot1-x343.google.com with SMTP id j14so15010366otq.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Mar 2020 05:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yZQZ0YHlJf57FDfiIYSXTvUjBXLBWliakdTP/B9+Slo=;
 b=ZRIKYWFKNqlr96Bg/D75SuEyPvr3Yx+HKxiv/Vl2qrHoMIM7bjp1jcxvMrWEWp4XX/
 WNBqA41Q/PQIIaO5dm97nwYgDp58yw1p6+EN2cV7CiP7hJ5URLwnvme7pBxPhGCSZ3tQ
 A/B+mIiViF5PHc4RxZH3xSQtPo9uiUcGHPrgvDZj3oEEEWrqmiRWs0jQWMs9v8ZRAK2d
 5X8xMzjKPDkNO9gq0v+9dEOtKccuM4cn4tbnq3ecd+y0aorIvxzrCcjuDIqupUJxMIRk
 79qjFFJcXalLAOmOaxx5aYkB/S/HfDvCSzPViVzbB/zB3kUKkK/GLRde3/nsVVY1jfCx
 AufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yZQZ0YHlJf57FDfiIYSXTvUjBXLBWliakdTP/B9+Slo=;
 b=EKuBCvIcKNuLmQqFytmD7Y5BNdAT7JT5NqwZJTT+49BBu4n12pQNbAlNPFGcIqigIs
 dvKw7RywSDkd3avd8313ONeg+BIHPbIkx1RUBWE+CKuTSvn+n+GpcBMe3nneiCIbIf8D
 cI0QMdDOyoZAq2vKZbmWwru2R5cI6++jWV0GuaQSxD3l45VMN60yZfP0d2c4uAUOWgCp
 H85pkmqtzhocB9Am5JFRd+glzJlHPsMzglM1BaX9YPVz5twGLuj/v1FVgIncp830ZMp6
 yt9jhnTZt3atCJuxKKfgVxSt1AlWvAq8j5rnasjwuyQBl/ljVXJAJrUlFWaCNOcP+SxT
 2UTg==
X-Gm-Message-State: ANhLgQ0s/Ml0Lhhz3DVJQC1UuQ2d0juNlPCK0XjV2bK44I8O1K88VGJ8
 3fQz6zsqPj6aHxeY+Hh1zRystXvEtaij/toIrUMqWJiE
X-Google-Smtp-Source: ADFU+vspRANXWKNa+cnw6CjQ7Cafhx+fx6mgFu78bWvyy5M/7Pl65US0x1A22RnQR6Y01by7PEtcGc/MWsfmZ+XykV4=
X-Received: by 2002:a9d:3b09:: with SMTP id z9mr19127588otb.195.1584274888945; 
 Sun, 15 Mar 2020 05:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200303191931.917613-1-robert.marko@sartura.hr>
 <CA+HBbNGbkOFOmo91x_Di3BNtxfuzExLmf=G8S=+7FObcn7wqsQ@mail.gmail.com>
 <69406b55-912e-4195-990d-eb077d7dd827@localhost>
In-Reply-To: <69406b55-912e-4195-990d-eb077d7dd827@localhost>
From: Robert Marko <robert.marko@sartura.hr>
Date: Sun, 15 Mar 2020 13:21:18 +0100
Message-ID: <CA+HBbNFTPBex8My-15ohD9KefZVZc0z1xpWC-yOLCEtXUG7QuA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_052129_903249_C8EAE801 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ipq40xx: 5.4: fix networking PHY
 driver
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

T24gU3VuLCBNYXIgMTUsIDIwMjAgYXQgMToxNCBQTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IE1hciAxNSwgMjAyMCAxMjo0Mjo1OSBSb2JlcnQgTWFya28gPHJvYmVy
dC5tYXJrb0BzYXJ0dXJhLmhyPjoKPgo+ID4gT24gVHVlLCBNYXIgMywgMjAyMCBhdCA4OjE5IFBN
IFJvYmVydCBNYXJrbyA8cm9iZXJ0Lm1hcmtvQHNhcnR1cmEuaHI+IHdyb3RlOgo+ID4KPiA+ID4K
PiA+ID4gSW4gNS40IGtlcm5lbCBvbGQgdTMyIGFycmF5IHdheSBvZiBzZXR0aW5nIG5ldHdvcmsg
ZmVhdHVyZXMgd2FzIGRyb3BwZWQgYW5kIGxpbmttb2RlIGlzIG5vdyB0aGUgb25seSB3YXkuCj4g
PiA+IFNvIGxldHMgbWlncmF0ZSB0aGUgUEhZIGRyaXZlciB0byBzdXBwb3J0IGxpbmttb2RlLgo+
ID4gPiBBbHNvLCBub3cgaW4gb3JkZXIgZm9yIGdpZ2FiaXQgdG8gd29yaywgUEhZIGRyaXZlciBu
ZWVkcyB0byBhZHZlcnRpc2UgUEhZX0dCSVRfRkVBVFVSRVMgaW5zdGVhZCBvZiBQSFlfQkFTSUNf
RkVBVFVSRVMKPiA+ID4KPiA+ID4KPiA+IEFueSBjaGFuY2Ugb2YgbWVyZ2luZyB0aGlzPwo+ID4g
V2l0aG91dCB0aGlzIG5ldHdvcmtpbmcgaXMgYnJva2VuIGluIDUuNAo+Cj4gSSB3YW50ZWQgdG8g
bWVyZ2UgdGhpcyBmZXcgZGF5cyBhZ28gKGhvcGVmdWxseSB5b3UgZ290IG5vdGlmaWNhdGlvbiBm
cm9tIFBhdGNod29yayB0aGF0IHRoZSBwYXRjaGVzIGFyZSB1bmRlciByZXZpZXcgYWxyZWFkeSks
IGJ1dCB1bmZvcnR1bmF0ZWx5IG15IG5iZzY2MTcgZW5kZWQgdXAgaW4gdGhlIGJvb3Rsb29wIGR1
ZSB0byBzb21lIE9PUHMgaW4gdGhlIGVkbWFfYXhpX3Byb2JlKCkgc28gSSB3b3VsZCBsaWtlIHRv
IHNvcnQgdGhpcyBvdXQgZmlyc3QsIGJ1dCBkaWRuJ3QgZmluZCBtb3JlIHRpbWUgdG8gbG9vayBh
dCB0aGlzIGluIG1vcmUgZGV0YWlsIHlldC4KWWVhaCwgZ290IHRoZSBub3RpZmljYXRpb25zLCB0
aGF0IGlzIHdoeSBJIHBpbmdlZCBub3cuCkRvIHlvdSBtYXliZSBoYXZlIGEgYm9vdGxvZyBhcyBJ
IGhhdmUgYmVlbiB1c2luZyB0aGVzZSBmaXhlcyBvbiA1LjQsCjUuNSBhbmQgNS42IGtlcm5lbHMg
Zm9yIGEgd2hpbGUgd2l0aG91dCBpc3N1ZXMgb24gbXVsdGlwbGUgSVBRNDB4eApib2FyZHMKPgo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
