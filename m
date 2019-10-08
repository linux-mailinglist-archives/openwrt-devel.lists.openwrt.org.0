Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B5BCF219
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 07:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9HE5B5r2P30QotOYXFamvCH58V267MsgQ3E+g4efM5E=; b=sKtHo7sr+FMkKTegwhTSQFKZ+
	NVq+2cqKT9TMfATJ3A/E1zusoeXXSal6ALhRHZ4dVP1dU+DnUlw2P06C0PVpg2MbmC2x1d5Q1oMV2
	ODSE4DgaW3SwhsYHnEwwm41BtxYWlP9HpK/thUe30MfFhpZ8wwuTTO+Bci37pjFd4FzbB72vx4bPG
	ZVPEbDHlZHb5npE572bhUDaE60FsQX6CDsv2H+W4wHtP1Fd0wUTFjIFQgnrZ1Hlx4wmlbxUPmZwme
	MIBwDge3dLpaOzY2NZ035DBOTcrpUBGsOwXen1Y8fKjCF9GKTCpumX/KAM9cXK/MjDyAolmabU06+
	z02J7WSiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhp7-0003IR-Ro; Tue, 08 Oct 2019 05:14:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhox-0003I7-62
 for openwrt-devel@lists.openwrt.org; Tue, 08 Oct 2019 05:14:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id h4so8988123wrv.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 22:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=2jhVCEeGA6NjtrEFDYH8Ix534XqLTb+t14BWAffTkUY=;
 b=XYwio63LssaTd5lin8V05NxY3yXbWsAFGg4BIHv2ubyMVwD+B9TIXDPckI/M17J8WN
 0dEv3Z4+/lWmKEk7awQrSB7WwS0+EsdOXHSTGX+qgVKAkyeYsJtRwDam2z+H8TTvaRgj
 pNdTqnKuMFzG2jQLOQaw3uLKaUc8jO9/M0JTn2qr7WHmoj1dixv+0ihSgiNFzektkA2v
 myoxkXAULFBq7W4+o/NQFhGZs9u+oWzPrm9VBb8ucIKA78OjyfVPevkKPvedjggvYFtY
 4wtlVqb0EdWNgApNHJcLH/FoYaGn90y+0hxHXYhNWV4ULWJ87zQ/cCbWBIC56synEnyo
 V2vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=2jhVCEeGA6NjtrEFDYH8Ix534XqLTb+t14BWAffTkUY=;
 b=mz8BkrF/ER4cRFqQ9eaGkx5ZtlAfeji76JytkDdGIlWMZJWSgPE7BYRICQMTmuBLI6
 Zs+1sP72rJWKabfuJJTiVDADUf3tQnjg0XnbVyyOiDIvYV4XprWb2zD6lN/4NZgHEskx
 Hm39x6dg4+1W2Ifu6FCr4e6L4vLT/AcTCRc49kk6AalvDDmHLEiLu+DQHj6uVtr1HMd0
 u1+IiShqdxBlT+H8rij+svU3/qRmAKUpCG/YcviS5pKGsvYhLJxjpIkhm3DL9IR6K10A
 OsGkRCyzYXO+K166ysrb41in/FwLTHTQbE9MwqxfVlmNbTxMJ56DbIfJg2P3QmlAqYmq
 JZ7g==
X-Gm-Message-State: APjAAAVGVEcmJ7rButqg1etzqrQbuCEo69myKOF/kas0nE/WiBq/RFCm
 6KRJz9mF/dgir0hAPAvR018=
X-Google-Smtp-Source: APXvYqy3YSg1gc0f9ottnrns+9vWq7MNy1sLkX6Xll1goX0EFDyM6RXJfqLumP9KZEc7xQgEyWJoZg==
X-Received: by 2002:a5d:4647:: with SMTP id j7mr26078666wrs.106.1570511640094; 
 Mon, 07 Oct 2019 22:14:00 -0700 (PDT)
Received: from mStation (host-79-41-253-123.retail.telecomitalia.it.
 [79.41.253.123])
 by smtp.gmail.com with ESMTPSA id s9sm2047158wme.36.2019.10.07.22.13.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 22:13:59 -0700 (PDT)
Date: Tue, 8 Oct 2019 07:13:57 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Filip Moc <lede@moc6.cz>
In-Reply-To: <20191007214054.GA14886@moc6.cz>
Message-ID: <alpine.LNX.2.21.99999.353.1910080711190.3029597@mStation.localdomain>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
 <20191007214054.GA14886@moc6.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_221403_248776_FAAB6851 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.4 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link
 TL-MR6400
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
Cc: openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Filip, hello all!

Thank you very very much for your help and sorry for me not ansering to your previous mail. I tought I would re-check this all when I went back home to report with precise informations, but in the end I didn't.
Your help is very very much apreciated.

As you found out, I would need help in exactly that: setting port numbers correctly in the UI and fixing the fact eth0 doesn't receive connection status events.
Thank you again Adrian for your help. He sent me a link regading this issue but I was confused since in ar71xx all worked fine.

Fikip:
> I tested your v2 patch. It's working but I found some issues.
Yeah, that was the last version... :)

> If you need help to fix this let me know.
Yes, pleaseee!! :) :)

And yeah, you're right, adb-enablemodem is missing. I'll certainly add that to the next iteration. I wasn't expecting this version could be applied due to the eth0 issue at least.

As for the eth0 issue, what I would do next would be to check within driver itself. But I am here, willing to learn! :)

Thanks all again,
Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
