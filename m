Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CCF1074B8
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 16:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UqryLgTQunkbK/OO3ZJPZsyN9I7isD/EEzDjhsBrE6k=; b=dhPzbn08NRG1djfr8SdK5+lKF
	Je0SsJ3A1bs13Yrq791ixLjOxKTFTjhzdX/o7cVYG+EYmcSLMo1ih7052oQlvf5dEp68xUZbEJGHC
	WdU+gIfZaByK4AkBxi5CHFxATYvdk83DIH/VmTBWDQTuldZpbtszgdEnp16qcWMex1K1KlV90R9k6
	vX8ECRnksGBsAKyqG8bOmOtvYrZhibPb+77sTrHgYIAh4S/y5L4PYQPRgmX2vC9tuN+/Y6JWU8GN6
	9QhNwsFvYfvPkRGoppaZKnXd2oWcU/g1istMk2xkyVDfIlVaRHDUqmE0c/vEH6obTqVzmi1Pf7e9Q
	JkA8KJI+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYAjo-0007xh-1d; Fri, 22 Nov 2019 15:20:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYAjf-0007nr-MW
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 15:20:41 +0000
Received: by mail-wr1-x442.google.com with SMTP id b18so9045413wrj.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 07:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=fU6XdSuNyCVWOdOTxI8EmyO4lob9sAj5C6ojiu3BKwA=;
 b=p0WfOR8NDwHHpfkTGMLU2jtXV/BLENDoYoHCZEXLc/X+OVNOmhgtdhhCJtX//Cdi1J
 ayTbOkSi2O/vWJk939CyND74sS9mPCFOYRRFbyMMvdHPZJJlUFNqJ5N++zus2s2pay4K
 AlFScxH6SC8zlUqKWeaFLKgH4/dQryX2jxDLFNB20Sky4b/AQ+RMfzexbJD6Ouru/sRY
 O4ujuT6XY1OxGRUCnb2VkzTFaggnYcooDZIrLETSxyFYks0aXWt6CzeXy0EkCGqE3ARR
 hPXg+PsraXzEotHJZs9G+HZQ+AWduYNX4UL0pKQJY/BwAQ0Yh7ICvFSk3A272On7tfDS
 17Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=fU6XdSuNyCVWOdOTxI8EmyO4lob9sAj5C6ojiu3BKwA=;
 b=gOqf3ZAD3PGZctWSMxn4OlQCnDiQQS+1st0P1hIwVA1UVhGNuMTTBFZo/BDe+yWakS
 +Wp97gGlY4mu4sZRzc3nlb5gu3s3EDJilklixiqU9oX6l3o3ZimmB0pC/pi8grKnSVUN
 11JRGeBVFpEugMqNiBswLQYpLhirTAfSPmt57ySR4sJW3AIIsNTXNOUOCRes72BGscwy
 QXaZZleE/jNQSnRbFh8JI1dKQsrfzRxI7lT9JD1vMLQkWZp416v4dyvygOMT37fh3WwG
 NmMnFILkAtxZwGCUAZOUMQxaFK3dRl94GRfg8IF1NaWiy8U6PMERFs/NPHpsHD6bFK0a
 cayA==
X-Gm-Message-State: APjAAAVF0sxZHhwEi+jeYFzNMwLbpiVa90Xv0cmrS3BDNplQnIFgPeaa
 yUZqPMXTK0bALAu6Qyvidag85ozMKYY=
X-Google-Smtp-Source: APXvYqwZXLoNcv+VxD8IDMZPIkGiFW+xLbamb/yDx2CzZc+hC15h0aCW82J3Gu1z+l328Y1djTLtKA==
X-Received: by 2002:adf:f547:: with SMTP id j7mr18737556wrp.69.1574436037406; 
 Fri, 22 Nov 2019 07:20:37 -0800 (PST)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id p14sm8392079wrq.72.2019.11.22.07.20.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 07:20:35 -0800 (PST)
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
References: <20191122000515.14886-1-hauke@hauke-m.de>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <54af2131-ad10-ce7c-942d-288828578800@ncentric.com>
Date: Fri, 22 Nov 2019 16:20:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191122000515.14886-1-hauke@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_072039_784365_D83679D6 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] mac80211: update to version
 4.19.85
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tested on ~10 devices. IBSS and AP/STA

Tested-by: Koen Vandeputte <koen.vandeputte@ncentric.com>


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
