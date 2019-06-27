Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF01586FA
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Jun 2019 18:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nVb5hUNj4tff57IDW5RBCElf0w0EgcX3OhqqmIlDXzc=; b=LSf0V5mhCOjjn+i3c9YIggnK9
	qpJ3HykYmvCSZjVMeFEI+4Arm02E+rmxR1H1GrKRBy/S9r8MZzg2X+faK2rtLljiJwMYhudmx20ao
	pcUMAdz0K3C20nhpPworpVRE1G8AbYgS4KH9o/Ye2W5STcjQwwP3taoekXIFU6aVBFo5zmI3gH8wU
	YKS+zZBlbOyOgRVoThgH9unj+UMs2GZOEej9yyOYyKe7tLPRYTaLk6Thldbyk6p3AqiaewnAcngLZ
	pb6TWrzsAHGHZH9/tmkU7IkIDjK+cjvcQN6tVzYBYKIAKTn/vXqFmiZzJsZYCwtOL5wY27FG2v+ud
	eU82Ez0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXD2-0003IF-4l; Thu, 27 Jun 2019 16:25:16 +0000
Received: from mail-eopbgr30072.outbound.protection.outlook.com ([40.107.3.72]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXCF-0003BG-GX
 for openwrt-devel@lists.openwrt.org; Thu, 27 Jun 2019 16:24:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=X9pvT9sbzbv977Onv92CcrEDBZfPuotgwP52swgaEMoCceHZJ5zrdYbhWHqwQw2bRgLVDBaJ+/TtBjetdmLrNPwP9jNVv618X3SPDWSBIKbC/xogJuAzDTCPmTqH5HE00V4Cdkd+RL6lOPkrBvkBJAisx3+m5HhtpDY+ZneAFpA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SRhR+IVAN7ITVqv8Y5uwxXw2tgDxs2i0ILuzGSlx77o=;
 b=HmMeIWjopFs0plCE0yqsEyzHwbWKa1PFnz7YhMuiZxtyqC6vaPhDL3LSvOgyplut+AbNYTFAAG7aCtAuzbXCd+SpNmf5jpysrpmke3hTRV+XoxiEUJ2TLwl/RxEXxLB/yfHWcvIeOWYeP8pC+jo8sX0Kgtebls9uqITZ1Gk68VI=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SRhR+IVAN7ITVqv8Y5uwxXw2tgDxs2i0ILuzGSlx77o=;
 b=LVOFWl17wyxK439PMyVRclfF89lkPlxn/WGYzIyTM+M8xd5NQgZ9j71F42zilsBVDITAG2ffUXAmYxb+ept1avNUakQSNAREJ+mhyLwuBdCc3KdCUnH5gR/MNjbiE1NugTImySkyXQLBKEzwGaCm3h5mKCSEbEE58WSue6nX+zM=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB2704.eurprd03.prod.outlook.com (10.171.104.142) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Thu, 27 Jun 2019 16:24:22 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::74:c526:8946:7cf3]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::74:c526:8946:7cf3%2]) with mapi id 15.20.2008.014; Thu, 27 Jun 2019
 16:24:22 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>
Thread-Topic: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
Thread-Index: AQHVKqIeoknZOE4W5UasN6agggiS0qarOsiAgADnswCAAENDAIABQMGAgAB5PgCAAANcgIAAAxKAgAFqw4CAAAHKgIAAByoAgAAaZoA=
Date: Thu, 27 Jun 2019 16:24:22 +0000
Message-ID: <9B416F77-FB45-4117-996E-63980A65A1CE@darbyshire-bryant.me.uk>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
 <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
 <a5605840-8a4b-21a5-1e48-86971bec6108@candelatech.com>
 <06abfe46-1815-fc36-db01-2cf24bdb734e@ncentric.com>
 <4ca7aa93-1960-1373-7590-1d39c41d8768@candelatech.com>
 <efe239e4-a6dc-1328-d66e-29047290fca1@ncentric.com>
 <f51ea660-d382-7d31-3ecb-f4beddfb997f@candelatech.com>
 <a53a95b7-b98d-9c07-9688-0f444d9c5429@ncentric.com>
In-Reply-To: <a53a95b7-b98d-9c07-9688-0f444d9c5429@ncentric.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [193.240.142.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94dcd95b-4473-418b-1422-08d6fb1be9b9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0302MB2704; 
x-ms-traffictypediagnostic: VI1PR0302MB2704:
x-microsoft-antispam-prvs: <VI1PR0302MB27047BD929EEC7844220297BA5FD0@VI1PR0302MB2704.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(39830400003)(346002)(376002)(189003)(199004)(486006)(2616005)(66556008)(476003)(36756003)(3846002)(11346002)(25786009)(76116006)(64756008)(102836004)(4744005)(66476007)(66616009)(71190400001)(5660300002)(66446008)(91956017)(73956011)(305945005)(86362001)(68736007)(8936002)(6512007)(7736002)(53936002)(256004)(14454004)(446003)(74482002)(66946007)(229853002)(33656002)(6916009)(66066001)(6486002)(2906002)(71200400001)(508600001)(6506007)(6246003)(8676002)(26005)(186003)(53546011)(4326008)(99286004)(54906003)(81166006)(316002)(76176011)(81156014)(6436002)(6116002)(99936001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB2704;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IjppZ8R9o1ESuyLcYv1nRVGd/q/yLhyNZd+4VJwbCEE8a9JCk1joHuqjaaWHdrxau+jh8oEzUZ0oKWYqdXdzX5LwlliWpiynrSFnptBYlipdVuYBrHcURogmqrbdZSpatgqx1QWIvNHnLkzSDo+YNVJJ8rC8ivRbCsqHO4ZCMaZ+GPwM3DrH+Z78tNrYK/8PnZmkQDRHVFwCG/Vk9B7x71hZS63R17l0C7K6GX8P7RWfYUmGS0Xuc9ZjTqsSvUWwnZOasu8hxvnZH7uHc4Ya0jL2beIkZQx8kwAAz8qFL9qSXtwVysktaZxcMtZoM4L1qGDhmmtDZXv0MRj4o+XDJjtFMmRpKz8mPK4RMGrGTC/XN/rft7CCqFRaw41/I3r2uaZ5ju60fcmw4/bviir05I6CHUE1gGTgRyumfZ3n/fg=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 94dcd95b-4473-418b-1422-08d6fb1be9b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 16:24:22.1811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB2704
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_092427_766912_1442506E 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
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
Cc: Ben Greear <greearb@candelatech.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5684378741144487231=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5684378741144487231==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3738C90F-5022-41B5-AD10-4857FDC17201";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_3738C90F-5022-41B5-AD10-4857FDC17201
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 27 Jun 2019, at 15:49, Koen Vandeputte =
<koen.vandeputte@ncentric.com> wrote:
>=20
>=20
>> On 6/27/19 7:17 AM, Koen Vandeputte wrote:
>=20
> I'm really wondering if the additional openwrt patches on top come in =
play here ..
> I'm not able to even send a simple ping across the link.

Agreed.  The ath10k-ct patches in package/kernel/ath10k-ct/patches make =
for disturbing reading although they apply cleanly.

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_3738C90F-5022-41B5-AD10-4857FDC17201
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl0U7bUACgkQs6I4m53i
M0qVpg/+O+sYWPKivABKcTYKMAk6YQQwyym2oi3W7g5IhjUWgFyenDfzlYIBnVeo
pH6FSdpsOEEEwnmLiY6n94bwf5y9sKlfSiWtfRj3tabMHPDWEGqW+He5YB+l/iDB
J6lX4iZgjBiXR0hUGCsOeoMHy2bi8L41JEiKG43UIkGzMX/vWhz47QYuv3Tron7O
Td7Ur2LolQrBVr0rdEQl15ucBYs2Td3QJ1MdhvaOtSDwIcHspuGxCWCHr4+KfjTW
REbdXMGuJ86qMUwqqLrVmBr7gBbqtafqUK7wjUvKroYiNDOtXF5yCUqMYaAHSi9+
G8w9vtlcPClBs2k6f5xu5JMsOtxY9kHp1eWNXuv42ccVAFMYivF2UVJVDPEgL/CG
8yQsJGMFeht/0oKQP6buuwlF0e334z9XbpEmCmdR9vSQmHRJTTkhr4gKCvs7Pp+R
A0cxNgoMUmc95AY78X13mxd+XT2uGo3rCd7MSBsZjQUzjlfslhUBQnNFX0q5F+ch
tr0bwJhfWx+wBqDA+AW8ADpLnCMy2jnELFZm+9U2N2wFQ6QREzG1i0IiUL7n2QCM
kPZRDtGOYGBZ/MqH/L9ZV8KHtoJ13QJg55GTpG9kfhlDg6nNGIiuG7irm2tpypwI
fcQFf7vZ79EyVS0YC+eBcuU9r7d1KHIPjXtF2NFukclr/6s8qj8=
=aOq6
-----END PGP SIGNATURE-----

--Apple-Mail=_3738C90F-5022-41B5-AD10-4857FDC17201--


--===============5684378741144487231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5684378741144487231==--

