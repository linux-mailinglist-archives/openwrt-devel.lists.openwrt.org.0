Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1F8ECF58
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 15:57:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9usvem792sjZlEEpRFOcHIpWG7yrtDzY++Hb5+u/yYY=; b=JQSnDczZK3iIij
	+Xbppk+Vs6B70B9Kp9j2sMwBoWVO80As4vOUv5RYxLneljh9rhtUMMTbLPggO+OQZgC1+yAQFZLSr
	RKo2AakDIWUI56qu81X9uVpkRgY18yM2+EoavvnRmVw7t4W4iJA2Nx3mudk8G6+bTuORpujVyC7oJ
	1IiydMwpXBosxl2s2CJDNJEO+j/5jRcnZZ7FqmPcms7jzm87kSc36rNB1Kmh/Wl2nisfMckYlOSsg
	rR2ITKoEy2B3RyBZbgzAUuQ9E2IZcecH8N6y6pITYHrYL0Hbrc+aBoKcy0+Y+v02EPvA4vfW4k/yQ
	E4Kn6pp0jAnkgv1ClXmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQuq6-0004ck-B8; Sat, 02 Nov 2019 14:57:18 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQupw-0004cO-34
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 14:57:09 +0000
Received: by mail-wm1-x331.google.com with SMTP id v3so10702213wmh.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 Nov 2019 07:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=OgTOIMdjZX5C03/HQIrVPEO0ioIRnb9okZiEeDQOWO8=;
 b=DAh47+RheG46jC5VfQRP+ZBJ5oCrMPrU4WQcegQNWDFllt06xErAaOomRrb7dMYDcr
 Z6iPeUdVWnelgtMZSOWNt39FZ++ZxSqXgozNG8HewEKJq2a9b68WbINrvoQNrD5tV7x1
 fIIxc5AicsXqdEVl71ak19Wz39WBGvhKK/qhsPR+5JvTnKFcMJEG0jffMi+v/CFMmZM/
 V0Yz1Mf6s1LWbvKo6DCa8x/3nlU/Ps/HFzlZijjqDvP3efhbUgSHBcPbN6VoUxnaQnkT
 2GRUYsLagq/au109xJBH/CBPCTfXs8XzmxU95VbjeOmQMqVqLGyWtvus1InfCezRXq3Q
 +q6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OgTOIMdjZX5C03/HQIrVPEO0ioIRnb9okZiEeDQOWO8=;
 b=LuUB/ZkgRn3zfixZp0jPayRvlOvL4mCdrSS41B6v05bNvza4mCQlY0j2VDIn2iZr2K
 grE2TQeSqM4umZgIst4A06oL0dSijMPAaKIAKEIoLsIt71cn7+66sE5d4NYF/O0iJY50
 E1wgrMMuQ0TvJZ2RdFE8dml3lhGsIm+SGK2L35ChJgK4Kh6l1HHZFyCHca9gqHIvza2Y
 w6irz+f5nRAsd/BimvKwIxgnehwTpZnwOoae93RfD392n2LtnRWRWyPAHnetAO/BC4zV
 T215Fmr8Y8OxlcIwboeqP1eOOjvAQNrRKwuDWFCGYeqmfi44W7t43qFnFw2kVwoHub1q
 DvHg==
X-Gm-Message-State: APjAAAVZEGFRkRv0X6eIBVTnZxpRv2e9k/F2KBtFWKaehrRYXBwVH1Kp
 VHQ6tOC3xh8FD2o5sv2QXoMrlzcN
X-Google-Smtp-Source: APXvYqyfjduRcdtQo4e+2utF9MsFKjkLGYZ/AAqKPYmmOvaUyTcGfvDCrsycEj/486fQmGTDPb9SMw==
X-Received: by 2002:a05:600c:1009:: with SMTP id
 c9mr15004400wmc.6.1572706625824; 
 Sat, 02 Nov 2019 07:57:05 -0700 (PDT)
Received: from localhost
 (p200300F6671B4BACE4339B9E1D2D5D21.dip0.t-ipconnect.de.
 [2003:f6:671b:4bac:e433:9b9e:1d2d:5d21])
 by smtp.gmail.com with ESMTPSA id z6sm11479207wro.18.2019.11.02.07.57.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Nov 2019 07:57:05 -0700 (PDT)
To: Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
References: <f5199706-3e5f-3b10-531e-b7ea09939980@gmail.com>
 <85b37900-ed96-c4ae-98b4-4d1afe273065@mein.io>
From: e9hack <e9hack@gmail.com>
Message-ID: <0cc408cb-6459-a931-9917-6015fb06e95f@gmail.com>
Date: Sat, 2 Nov 2019 15:57:03 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <85b37900-ed96-c4ae-98b4-4d1afe273065@mein.io>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_075708_132453_DC170762 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Am 02.11.2019 um 14:44 schrieb Jo-Philipp Wich:
> Hi,
> 
> please try to find out which procedure is crashing rpcd by testing the
> following commands:
> 
> - ubus call luci-rpc getHostHints
> 
> The one that hangs/times out is the culprit.
> 

getHostHints lets crash rpcd.

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
