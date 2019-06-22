Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAFD4F58A
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 13:50:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3yhMEHd7GEf9pllaW7po65n5chehHa9vj8nzFYCvhfk=; b=Y6rurlgCAo4n7JfkTT6Tv7ref
	+2FYeSGdum9++vMX8E4PfywYjOyEpUUbHrUAnwSvzjBB2XDkOY96Sd4CDro4pX5CCYNfCxOK/mfRg
	8Xbham8vNNe02my3oi/08OMKuVH/0bdVLP8WHvDjrYtDyrdY8lqWW5yov3hK5lS936yncB+YFZ9ub
	oTyM11GDUa96qvblqHO5zmPLktUAh9Gz/ONM3ko+49Hp4aCx6MCIaqkeWDu12sxWGroKwP09JyK0v
	CvC3V9L7KoWvkzE8hiMdKShWp06LF7WtWHzOOTlaEWUP0Px9uTULPlJM1v2uG6Xk3a+EIaCPaiih8
	6FtQhjAkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heeWw-0005KO-Ju; Sat, 22 Jun 2019 11:50:02 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heeWj-0005JR-BW
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 11:49:50 +0000
Received: by mail-lj1-x229.google.com with SMTP id v18so8284092ljh.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Jun 2019 04:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=FfkhG2AZbo0L6XBz64GuL5YXGjNObET/c9wSVvJOvQ4=;
 b=sJZum1TXD52jV7YLQo3/E6wt76UEyGofYy4JKuV5SOw/b6MQfykleWNslMfWROdsCj
 3KMK/U3hjCdvXZdIlHdiHZuAeI8uUHSLAF3zxRZC0NM2jWZI3VPHEutnA0aG6ItBKGeK
 0k2crO0MsjXxzawrAsum4/2T1HSJTB2o/urDPHfUaBX8OQxt92/zUtRYapNOCyzAWxm2
 4TiE9wlkirfk2JXmkPI+1K1/8sLQZUiZbAFdaAtqmvUZe/rK3XNGeTZlRfg/CA6H2EKH
 GgyLwxz4IihQVZW8xrtQP/shKkPrhYTF2Hewx0W1ZH3tMwMcM6565sfNR6rr/JiVJ0BV
 vTfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FfkhG2AZbo0L6XBz64GuL5YXGjNObET/c9wSVvJOvQ4=;
 b=WHgN9fy4ES6WNlt8Xpxna8TG+sIirCcbbh1sm0aEkJiipXrBdxsNLd2Mj8WmkKD0j8
 plKmieByaGmkw2HFpHcAvwFHOUn5Zx6XD86HA/qoM3I1sm+AkwSYmAgoLoenlF92Alxk
 /jAj7MTo/gSquJIulLS2KRbZUPdLmbqi3WzztAlCmUoa47yGHy2R81jq1oIX6wAC7ng6
 Y4feWli/qUedUDCsHG+z/aGBwmq6v8wM1V8A3lk88PgwiNJ0D3C6/pSP0Wc/4JF/HVFl
 9qX83HsYJR3L+/CN1ePTsy8zBTouoBlvBlB4fV3Jv0Ysi0iSGaautdkiTBubNVoGh1oO
 UcRg==
X-Gm-Message-State: APjAAAXo9gQesjgj6t9KiIeNzI1vh6h68abPOclUDIqwWTCAklkE3Mfe
 sjtBB384i9pirNgqCtmxAjo=
X-Google-Smtp-Source: APXvYqxeGGHKuV+AKaOcFtxHyPUfF1mdyGbzKM5gfaihg/CgdEAI5WOZxeI8lxuTU2o6Y31bA6+7zg==
X-Received: by 2002:a2e:8559:: with SMTP id u25mr28619523ljj.224.1561204187584; 
 Sat, 22 Jun 2019 04:49:47 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id p6sm813766lja.67.2019.06.22.04.49.46
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 Jun 2019 04:49:47 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
References: <3f540e31-e4ee-1575-fd4d-3b2225aec3b0@gmail.com>
Message-ID: <30402d4c-f580-4186-0290-6c52dbab362e@gmail.com>
Date: Sat, 22 Jun 2019 13:49:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <3f540e31-e4ee-1575-fd4d-3b2225aec3b0@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_044949_417376_82EB5008 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] Dependency problem after changing package name
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

T24gMjIuMDYuMjAxOSAxMzozNywgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEkgcmVuYW1lZCBs
b2NhbGx5IHBhY2thZ2UgImx1YSIgdG8gImx1YXgiIGFuZCB1cGRhdGVkIGRlcGVuZGVuY3kgb2YK
PiAibHVhLWV4YW1wbGVzIi4gQSBwcmV0dHkgc2ltcGxlIGNoYW5nZS4KPiAKPiAKPiBBZnRlciB0
aGF0IGNoYW5nZSBJIGNhbid0IGJ1aWxkIE9wZW5XcnQgYW55bW9yZS4KPiAKPiAjIG1ha2UgVj1z
Cj4gKC4uLikKPiBDb2xsZWN0ZWQgZXJyb3JzOgo+ICDCoCogc2F0aXNmeV9kZXBlbmRlbmNpZXNf
Zm9yOiBDYW5ub3Qgc2F0aXNmeSB0aGUgZm9sbG93aW5nIGRlcGVuZGVuY2llcyBmb3IgbHVhLWV4
YW1wbGVzOgo+ICDCoCrCoMKgwqDCoMKgIGx1YXgKPiAgwqAqIG9wa2dfaW5zdGFsbF9jbWQ6IENh
bm5vdCBpbnN0YWxsIHBhY2thZ2UgbHVhLWV4YW1wbGVzLgo+IG1ha2VbMl06ICoqKiBbcGFja2Fn
ZS9NYWtlZmlsZTo2ODogcGFja2FnZS9pbnN0YWxsXSBFcnJvciAyNTUKPiAoLi4uKQoKSm9uYXMg
aGFzIGp1c3QgaGVscGVkIG1lLiBJIGZvcmdvdCB0byBjaGFuZ2UKUGFja2FnZS9sdWEvaW5zdGFs
bAp0bwpQYWNrYWdlL2x1YXgvaW5zdGFsbAoKSXMgdGhhdCBwb3NzaWJsZSB0byBtYWtlIGVycm9y
IG1lc3NhZ2Ugc29tZWhvdyBtb3JlIG1lYW5pbmdmdWw/CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
