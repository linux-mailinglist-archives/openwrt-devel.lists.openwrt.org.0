Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B099014CBB4
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 14:51:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8swGr8MWVwIuXvwestex+kbTlGTcxyssMQS8o72CLME=; b=Hoi13p+pTAsBFG
	TnXuthAY79CwJ6r10NnfO/e9I/gJNWy+iZDXHikBXkg/LohSI8v7UqawcHqIUwkhuymKgaUijQEt6
	A3D64xshvQ2mz13rawNMetdAHNvqcBoKmd4J+5cxMr1RU3n6ig/9qkFC+wNkwwK/mMt3MY/rk1k65
	LF4wL6nkO4veGAr9izbaiIvVTf38uaUMObtSSAXkr8erld+QK5KnCn5fvHR8Ot0FkgwwY/S+UUvRw
	IG3Waw1B8Y1nyU4yT0Uw10J7Lweh3r50HNwFPaNlofqKBbjsRuum1C8Qf8NtBq9g+yufMXVjqRP4w
	TWPhlUPBZIUKRTGaPFzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnkn-0007pE-Je; Wed, 29 Jan 2020 13:51:37 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnkg-0007ol-Fq
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 13:51:32 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MiMIY-1jT7tI0cb8-00fWAi; Wed, 29
 Jan 2020 14:51:26 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <20200126222605.152990-1-mail@david-bauer.net>
 <00cb01d5d5f8$debbe840$9c33b8c0$@adrianschmutzler.de>
 <d66591cf-83a4-7b82-3230-c2bd6318ccf9@david-bauer.net>
In-Reply-To: <d66591cf-83a4-7b82-3230-c2bd6318ccf9@david-bauer.net>
Date: Wed, 29 Jan 2020 14:51:24 +0100
Message-ID: <002c01d5d6ab$330cdb90$992692b0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQJpW0yFKgz3ydTO/z1BBRqerXr2oQG66HVBAUxpBHCmwmSIMA==
X-Provags-ID: V03:K1:jofj1/AvyxCkPKjhi9h+xxYyGJWFDgvVN9rsHF7e1eQO1wW3gTZ
 5GZyqWs5GERFTXkgkgeQMmhVBokDNrizIwk6CaWA8hDxebdBQmFRBS7yLw/6AlXM/VgxDkf
 GfeF/JfeGUjAdwE2euS5fKMBLhTzaC4fRoYiJCAh0wRUi3jgeTSfUCpQKYSbMLORXHiNgKf
 tKuKo1ZqbD9ia6AmlU0+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nIMeoWfHPqg=:4NC87QMXSGX947jPpSxWPl
 yjeLc+rg0pXKRu2avYCxXp4WxEMIOVrX272HO08PIEOPx9PPR+Jcwg3keLsyPPRIE31tcXvzn
 HK+9TTPUTVPGYJJ5/hnHPV4JQOn+Ugff2FOWPunDRbpeMlmJqGOtp+Jvnbdo2LZNXLjXNMQDi
 kyZu0AITg0Bl721ouR0P25tOJa7KHz6XN1qk8CvdYxS+fqECtQE0EJBJBzEBV/Bw/oWcusACp
 5cxONKm41TXI/i4VF6MCAWhpf5KAscVW95ImE71XSVcSQ0j7dXmM1YRGOmSfKBrUxyE/tuogJ
 ikeygcl/EV5HtmeL4ZBXOTtSyTe2cH/LqJowgGwKPKUH53jhZGn9iwml/Mvqn+cnYALrbDwin
 ml32Ge+uo5oRMfk9cXpcMQCEKiobOvsr/ZFYk41a9/+FtOVhXwhSVz8Eak1c60aYhZRnqppX5
 ABeqknOsFthVXVvFkwjKg0Db/a/XkbbhNmGO0LRtJkCPAz9x1bV5ap4K6/DftkyfAukY54l2A
 /VcBZ1aiFLD5vOrR1Dg71lahnUs43wgvRn7NNIPPUt4/uN7gFTI1yrI2j+vTj6t85xIJngYMv
 9jOfujDLOY2QmzVJDNhGF7HB0wMjvTAm6CRYDdwyQhV8hX0BF8WazMwJkFXeWGa3iwdk22tkm
 /PbJDiuL9FUY92W3iREdSQ8+waoE8AHrR3AjUY3ncmS/zMVUsCUd5/KwF0dxpSew9K2Ncqb+P
 R/z3IgiN2euhBkrGiws0ctf75C356BOSjzKfBfbX4REHvGLjWyixnx4Clz4O9DLpKvGkGcOgS
 32+qOnODaIS4Uogv1z4sXWhki2qdlHIXRRkZSiXebDGJgtaSNiKiTsY2fonZpml8maqQKqW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_055130_822064_DC91EA80 
X-CRM114-Status: UNSURE (   4.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for GL.iNet
 microuter-N300
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi David,

On 1/28/20 5:34 PM, Adrian Schmutzler wrote:
>> The GL.iNet microuter-N300 (internally referred as MT300N-v4) is a
>> pocket-size travel router. It is essentially identical to the VIXMINI
>> (internally referred as MT300N-v3) but with double the RAM and
>> SPI-flash.

thanks for the response, all fine with me.

Best

Adrian 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
