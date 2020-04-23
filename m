Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30451B5331
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 05:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Es9SIhqFOR1tOZINLbwVuKpFo1cdV9togA/vRVj7xQ=; b=NyEhyKQRU3CN0V
	FdlLumOOYegb8gRF0eVvZiv5O9sWt7WDH1enQjXMFaVrmHND4c3N/PeGICOciqp4DWS6bUaZKSDuQ
	3S8QT2Qe/tf/AG4l7q7yyVK7Ude0Y+ftBdVn1i7zyu5Gysr3epaUMN66znIzxgaA0s3DQrR6YuJYE
	46Obt7OxlYoYHeYeUESCtF7mbjw9VTab+6FK5KDoo1RzkujsaF0D2k1rGuWqD24z576Hx80nz1IJd
	5fOyBR7qRPWFUXBNdGkkv2pmASrlEAf8xubaiwgzZLVk8sOq8J9e7vauP7idgklC6jhBA9dpIcI2S
	hDCi+ArOkxo5+FWDvzQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRShi-0007Q7-Kp; Thu, 23 Apr 2020 03:39:10 +0000
Received: from mail-ve1eur03on0607.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::607]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRShc-0007OH-IB
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 03:39:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWSAXBtI5haKwfRX7K85UtzwpSBJPFPnVcv8o6BUfSQ+8y3FNdVx3ig8rSE85vWuLqmj9uGOyAG4L5p2CADG5xPIVHcr40brx79Dmfpv4My//7MpCWZ0zySrwrRhYBTUmuAPbMVBcsaBUwAE0EzhhZ4Pfie5nFEs3wonR0gKsXfRtW4CGFj9/tdY4pGV6Xm7M5o2tqll/1muYW+VxROxFGvcbjl1JJyA/6PCULueANcqcG/DnKLc+aM6QjlQEwppzF9wSIjfNY93wy1FYiVx/TFzoItXPZovmGQA2/JaaCUorV5E+ztN/2k4K2/5O60L9iYWMfYd0x3AzVohP5cYew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EJ4YRJOE45CPYpLbdC5C1gLtZlNvQSHEzawwsenTCFQ=;
 b=KC4DWb1xPvBTcoHVmmU1ufstoQqMpunBF3Ns07Ne1PTyiZxp59n2Yjuv5O45dZxVfPjzvnsbMgaGdTKAfy+0hw1qJfZ829FqIDhKZB/nOaJPgCAzqOt3oHK/cQvdCk8mFKEOhMj74cj3jviC1osQWJD8SU9naZ8lpgxHyw4iHdCtqoqlKlAM8iZ9ex7XzPbosmrh7BtV/VScwaa47G8QX/u8ymMyVJGbZWQcAv6ZiCPnPomQMpAzpxGeCQJm0yNMV4NQw3mMQ4oBelTh+IuV2vPVYqdDp+okcslzjKQoDs8vrLDfeASz858tWn471DdI0Yfp0ryYeqfQ/9wcjvMO+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EJ4YRJOE45CPYpLbdC5C1gLtZlNvQSHEzawwsenTCFQ=;
 b=TSzRgVeagg3N4Xi/C9jabuof093J/tEG76QwDFUaooUgG6oaTFIw+Sa8TYUoVIQxNwcI93oUcFicAie9TUooreL+AknMi4WAahqcmGfXvnUGQI3wEXskqZMe88Dyw0xwEqPyqGHHJrgauu3GHxaXLYXhnHgaYrJxm+igq7l6WUI=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM7PR04MB6840.eurprd04.prod.outlook.com (2603:10a6:20b:10f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 03:38:55 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b%5]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 03:38:55 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Alexander 'lynxis' Couzens <lynxis@fe80.eu>, Arne Kappen
 <openwrt@arnekappen.de>
Thread-Topic: [OpenWrt-Devel] hostapd fails to link at current master
Thread-Index: AQHV6yn8IxtKLtaosUKoI1yebgRh5agsq5+AgFm/AEA=
Date: Thu, 23 Apr 2020 03:38:55 +0000
Message-ID: <AM7PR04MB68859324650B99633AC364D2F8D30@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <e86abea1-6c7d-49b9-164f-6ce0971f8631@arnekappen.de>
 <20200226020542.64d71762@lazus.yip>
In-Reply-To: <20200226020542.64d71762@lazus.yip>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 64bec442-8051-4b89-6bd8-08d7e737d9c5
x-ms-traffictypediagnostic: AM7PR04MB6840:
x-microsoft-antispam-prvs: <AM7PR04MB684044D7D0E290F9B210D2A2F8D30@AM7PR04MB6840.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6885.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(186003)(316002)(5660300002)(8676002)(52536014)(8936002)(81156014)(2906002)(71200400001)(33656002)(66446008)(64756008)(66556008)(66476007)(66946007)(966005)(478600001)(86362001)(9686003)(76116006)(26005)(55016002)(4326008)(54906003)(110136005)(7696005)(45080400002)(53546011)(6506007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FnBGbPWqz7YpQYUGdjCvXMBSQ8Wuy3A460QCXbiWNRcHAaxWi/Hq7UIEteGR1DMbl94mJITAyJzvrrykQdQUjt+yUVLHKBhTmXPoPq5CnGVVrq20sU7hdpQrNt9+Vo+nW1Jut1BQs/zbcUdrmLkTb1f3cCgaMGrtEnaTrnVe5+NT6owWkJL/5llHUSWyY2Z2RBxOj9tpffnTizoAjiepB3tQ3gGWbw9JgLzKEv0xzdBwDxzDc/7oVgNNeAblUrJ3DLj4dJ80fETPwkiIeCRhrk7U8Hm+N4lahcjK/FlglbOvOwKUdtw6fpkVw1Mu/6hdT4NznWCG8BHsGLmex5Za7nv4LtRLwGdet7kx7NKoPYP3xQ1r6LZVRgx4tJzMx3YZ5iqi/fo0CwbUso9SG/h/PS8EHof4kSDUdVi6LaeehWQ4QSZlk8f1uvZ7W+yvVpLvc7rP6pCADqhOWVdXt2vI8Aisb6igaCPWamtCe2Zw7tg=
x-ms-exchange-antispam-messagedata: z2tjrvkqMrCRSCWMp6pFOkbDpqwnrqLolPShrs5iXiJq4ItKQO6OrRuWEJUkG1IR7jbJjCLJABSxohqHjZR+4XXf0JFlwFghycRA/hK1AAc/azhEmqMHjhmkbqQ840S+AlF6WxHXmK988q362KKO4w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64bec442-8051-4b89-6bd8-08d7e737d9c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 03:38:55.8120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sXRGODTj3/XIx1ocMjs423ZLNv5JabglFBg6xU+P0UiE/XSqYVhORZbWVKDYkASID9N7Cb17nWS0lwlqwf8/UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_203904_604964_68528E95 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:607 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
Subject: Re: [OpenWrt-Devel] hostapd fails to link at current master
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

May I know any update on it? I am facing same problem too.
Thanks a lot.

Best regards,
Yangbo Lu

> -----Original Message-----
> From: openwrt-devel <openwrt-devel-bounces@lists.openwrt.org> On Behalf
> Of Alexander 'lynxis' Couzens
> Sent: Wednesday, February 26, 2020 9:06 AM
> To: Arne Kappen <openwrt@arnekappen.de>
> Cc: openwrt-devel@lists.openwrt.org; Felix Fietkau <nbd@nbd.name>
> Subject: Re: [OpenWrt-Devel] hostapd fails to link at current master
> 
> Hi Arne,
> 
> > I'm getting the following liker errors trying to build hostapd-full or
> > wpad-full fpr x86_64 at the current master, and tag 19.07.1:
> >
> > The last error also appears at tag 18.06.7.
> 
> thanks for your bug report.
> 
> I've looked into it. It seems a Makefile dependency problem. I've done
> a quick dirty hack to fix it. It builds now. You can find in my staging
> tree under the branch hostapd.
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.ope
> nwrt.org%2F%3Fp%3Dopenwrt%2Fstaging%2Flynxis.git%3Ba%3Dshortlog%3B
> h%3Drefs%2Fheads%2Fhostapd&amp;data=02%7C01%7Cyangbo.lu%40nxp.co
> m%7C00c47579014049a000af08d7ba582e89%7C686ea1d3bc2b4c6fa92cd99
> c5c301635%7C0%7C0%7C637182760209261732&amp;sdata=jV1uVj%2BBE8
> %2BC5OIDyfomTc1JHWwje3K8wFswhkP8lhc%3D&amp;reserved=0
> 
> But it needs further work to check what's the best way to fix it.
> 
> Best,
> lynxis
> --
> Alexander Couzens
> 
> mail: lynxis@fe80.eu
> jabber: lynxis@fe80.eu
> gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
