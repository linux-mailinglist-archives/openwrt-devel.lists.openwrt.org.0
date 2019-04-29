Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4364DC33
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Apr 2019 08:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fdt6ADIHl7U2Bl1eZhO79PasqEVhrVcZcDKg29Gwh0A=; b=OkTZsqTZMneoZ6
	WhtiRfpsUL5hZ+Znq7ycKhgizPC7x0S/ubYuqIQyKeAct9FBlC5WaGGuVNTBQEUunvt+rXeMIImg7
	yZEMqd2qvYqQ37nllKBWBeRKntIoyWLDyNgoRj+C9xylHDKoRaEraSBm9HFDxVyD2S/xj4q6En/KS
	yrkbiV0R/geoEUj7gMeY7n1m2PdYwmX54DI9qP3uqEctkLWdIr9210m9gpyYYwGgRsJvTySZ2nty6
	jUVUEPVzZWv1aqTkHgEHAq26FgL1JK8jzcQ+ZyA8QZELvr9LO6sYf1u3VjKPPTj5yk74ar+omfrLC
	Pz00U9JLqBEyYWV3IjmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL07Z-0002tu-Dd; Mon, 29 Apr 2019 06:50:37 +0000
Received: from mail.neratec.com ([46.140.151.2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL07S-0002t3-Hy
 for openwrt-devel@lists.openwrt.org; Mon, 29 Apr 2019 06:50:32 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id 83877CE03B5;
 Mon, 29 Apr 2019 08:50:24 +0200 (CEST)
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id wHP8sMsXKCcE; Mon, 29 Apr 2019 08:50:24 +0200 (CEST)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.neratec.com (Postfix) with ESMTP id 5F375CE03BB;
 Mon, 29 Apr 2019 08:50:24 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.neratec.com 5F375CE03BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=neratec.com;
 s=9F5C293A-195B-11E9-BBA5-B4F3B9D999CA; t=1556520624;
 bh=iyS8ishFFsz9mKAWpbjgGr38FnQTOJ8/fNBABmmmKgM=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=keDqQ5jSkrDFnDhBlO5FIRVuZLGkRBxmDz7wj5YPkaRREqO1Bo2jhYLrlzD3IXpJm
 1zf1Z9ruynnxcftOy4/EfpfcXjaC/WrKBO8HbH/8LW/gIgoT8kbv9KPKvBqCcDOD+1
 YtDvcX5cbQz8YU1PmkII2g+W69alvVnr9beGq586F1752X3DobBq5JeyHwAs3ce7Zj
 qBXGoE8kP9m/ycsj0VQTM1qmwqty4KbJsZINl0Yp8ln1Mix/gF7yAXlzerndFV2BSI
 FVbnNkuJntKpM3ymAPN7ogj31YzD/9Nw+HnnuIbg+YbH6huTY6+MRLfa0QdgiSe4cm
 bLECisPVsFgMw==
X-Virus-Scanned: amavisd-new at neratec.com
Received: from mail.neratec.com ([127.0.0.1])
 by localhost (mail.neratec.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8I5rhShO8HOU; Mon, 29 Apr 2019 08:50:24 +0200 (CEST)
Received: from [172.29.101.151] (CHD500279.lan.neratec.com [172.29.101.151])
 by mail.neratec.com (Postfix) with ESMTPSA id 48324CE03B5;
 Mon, 29 Apr 2019 08:50:24 +0200 (CEST)
References: <f0cd6229-71b1-fecc-3876-97a68ef743a6@ironai.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Matthias May <matthias.may@neratec.com>
Message-ID: <cd20ab81-8400-0e34-dc7c-ff885aa5d1ef@neratec.com>
Date: Mon, 29 Apr 2019 08:50:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <f0cd6229-71b1-fecc-3876-97a68ef743a6@ironai.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235030_924182_721180EC 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Fix TX power handling
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 25/04/2019 17:54, Vincent Wiemann wrote:
> First EIRP is by definition ERP + antenna gain - cable loss.

Hi
Small detail: Don't forget the antenna array gain.

So EIRP as:
Antenna Port Power
+ Antenna Gain
+ Antenna Array Gain
- Cable Loss

The Array Gain as a simple lookup table:
1 Antenna: 0
2 Antennas: 3
3 Antennas: 5
4 Antennas: 6

BR
Matthias

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
