Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFC3F4167
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 08:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O1LR2D3j9eAsUKQ2C8bvX9bnaxMXOxSDuBsSop1wpsc=; b=r9+D4Ta9+Cj7Jc
	HvX+Zoqx9xBG3Pne50YBLjulKSFAVNW2dc7efSScLG3otmQElYBKBUB7w2nrlIIiTjPLjj7B5I7jW
	edVa+KtJXK6+nFz1qMbT7vkX1FDjvgIyAfuLGjkdV+A9jjXUd2LX7e+D00CBoZjY199PnkpxexVBL
	jldokqODiVVbQ1fH6W26UtsJWrUZLZjVkHZBdtqwJMPEWL6TFIqiaSXhrLhCi51Pi/woiGPg9IRsg
	zSNLT8JwrpJolXZz4cqbar79AkDnMaFrwfA+hrxegWKnlyGUX5tpwWg9CNpNHXttjArzunMUobMeY
	YzCrbf1TVGzRsbAvtsZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSyoi-00028c-4Q; Fri, 08 Nov 2019 07:36:24 +0000
Received: from smtpout-49.fbg1.glesys.net ([2a02:751:100:2::49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSyoa-00027x-Tp
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 07:36:19 +0000
Received: from [192.168.0.49] (unknown [37.123.165.95])
 by mail-halon-02.fbg1.glesys.net (Halon) with ESMTPSA
 id 6d8718a8-01fa-11ea-b1ec-2f60bddcfa2d;
 Fri, 08 Nov 2019 08:36:10 +0100 (CET)
To: openwrt-devel@lists.openwrt.org
From: Micke Prag <micke.prag@telldus.se>
Openpgp: preference=signencrypt
Autocrypt: addr=micke.prag@telldus.se; prefer-encrypt=mutual; keydata=
 mQGiBEdTEc4RBACxgkIJHHBMsH182b0B35Hb9oAksm0dtBvB866l038ivY5dLRnblqK3REiY
 TtxykDcilXV0UmjyDQP4YhUIf0Bch79K4VHksiAFIjN8Ci6AYBDLd8rXuqfykO+YprOoGDrU
 j1sOCHw5zNKbTDfHUtVTOrUyBtbOhJVrCjch38E9iwCgqE3psviH+k992BQxMifLZfHupOkD
 /2QBEUvClZirB1NAL/Tgb5Q1j7CwUSud9F1KPUHzrgVBnLuTYlin/Egk0LTeEID3FYEbbyCi
 wKsISCduVfrC3fncjyek1/5ENdaGV7W8ShmTW5oxEDRMhUeQIrQeAPCYgHmjy2G/3/QlzMYb
 LdWi2x5YSydGnLMI6WCud+HW+FSzA/9cjbv1jGBXL9fJT3oxw8G4CdPHgM/HtPXTPPpzRATW
 U/CpU7v06WRWRNTjC7iUrtn6ylLV+skwPbb/ri2PMXOHq0h/Zdsd3JEFNSGNvC3UhKms48Mq
 svixshI3pVw20Qbp8JjJkF8DRRTqSUVVcxP9AIKNt94gdNLiD1SoVuPazrQiTWlja2UgUHJh
 ZyA8bWlja2UucHJhZ0B0ZWxsZHVzLnNlPohfBBMRAgAfBQJHUxHOAhsjBgsJCAcDAgQVAggD
 AxYCAQIeAQIXgAAKCRAma/zcU1YkGKkTAJ9Ba/04C2kvLlys+RMc3P6S5hGXhACfZL2j7CGM
 ZYKupjfcwEb7hBB4OHu5AQ0ER1MRzhAEAKPSM7TDyxkDZY+F+2wevuFG5mJKWRSe8gu0yrx2
 7s/zxdyZK98+UJO7JiwmzOOEQKFrR95tSD3PbU3U9vt0OW+PSiKDNJZ2U4EuXs7JlgkZcr+K
 lQNQ/wNBEgPostKusMJeucZSsXobP/8ucR2THv0ADTXARXv0FRduPlT4CeybAAMFA/9WcTf3
 RzDdsfnuOMhV7jtV2GdRsdqKvVsMBT8k6hVXgTFsQ3p1/yjpri4X6Y3uEl9j0N8Oi9uAKI06
 72uHIu0QxadJc7LsmaL1MbNNDMBr5RHT/dV1pLoeZ/7ePm9AayzuskJ31lY5Dnd8M5wN0S7r
 biuID/sMr8cZAkapmUFqOIhJBBgRAgAJBQJHUxHOAhsMAAoJECZr/NxTViQYOD0AoJKjZDX4
 BChcNomPd82IkfvSJHmCAKCFBzuGSF9JhjZI6FE0GsLPDGyrSg==
Message-ID: <94e65ceb-1d84-f28d-a423-676c4aeca605@telldus.se>
Date: Fri, 8 Nov 2019 08:36:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_233617_121958_2B3F0971 
X-CRM114-Status: UNSURE (   4.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] ath79: Force usb host mode for ar9331
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In commit 00ea16557d [1] the way usb is initiated was changed. Instead
of initiate both ehci-platform and ci_hdrc the bootstrap status register
is checked and used to determine which platform to initiate.

Unfortunately this break my board since the gpio used to determine this
is used for other purposes.

dev-usb.h only exposes one function:=A0
void ath79_register_usb(void);
so there is not much to alter the way usb is initiated.

I tried to write to the bootstrap register but unfortunately this did
not seem to work:

u32 t;
t =3D ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP);
pr_warn("ath79: Register before %X", t);
t |=3D AR933X_BOOTSTRAP_USB_MODE_HOST;
ath79_reset_wr(AR933X_RESET_REG_BOOTSTRAP, t);
pr_warn("ath79: Register after %X",
ath79_reset_rr(AR933X_RESET_REG_BOOTSTRAP));

Gives the following output:

ath79: Register before 42202
ath79: Register after 42202

How can I solve this?


[1] https://github.com/openwrt/openwrt/commit/00ea16557d


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
