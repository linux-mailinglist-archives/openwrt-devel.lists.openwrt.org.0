Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C061391CD
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 14:09:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLGVhrXGuvou0T7sGhmmLoQ0KLLCymoKBWKkHQIN9As=; b=W+jW4gkwDKeXUL
	WY1o/cLbCDjRmeagoR9MmmW2k0myPwO8CCl1Gr2MNkIwGsXZ4RhBLF9z8edWeqZS9roYKyCPgFIwZ
	PmL/1xYcnKTJTAvf9PamsJfStLEwWrlT1x/wFSE/GK3naNbzil55EAmw5KQSBec/2o/l1vtqPpa+R
	moU74wDUtOXHT7+Pp8z7Q9A086RKViUJgNfLFj6W4vcex18yQIQ8jztpYwN6qPsimEIfVqP1E4NMd
	kNcpS9i1V4ThYPtSvFdXxRw7iPBy23pPmDp2EXHtiKsiJrE7zoSAKmxOOiclnyvg8giZ9qa6yPl9u
	jRHpgQ08pSFMoaup/KqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzSu-0004hR-PE; Mon, 13 Jan 2020 13:09:08 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzSj-0004gp-KO
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 13:08:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578920927;
 bh=9Q0dkxxI5TdcABxoC8ow2SL8fei5VOTyCuosEH4GBUk=;
 h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date;
 b=lmdgNuFzQ4mlujm1Wnulin1m+zagEryYhFkCxvmr84lTXoWJjnpEotDIACkNO6/e0
 trRNf6WUkKye0zke/Ifs3zrImr3BhHlnw3j9sAforsTHGXA3I0I8YJpJ1zSo27QFhG
 Rb8pUSqfXgKq3Bwp7rXZw8OeHLIzXLQvFXmFSDwU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from Gasman2 ([95.223.73.239]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MLR1f-1j9LG13I0J-00IRhX; Mon, 13
 Jan 2020 14:08:46 +0100
From: "Thomas Endt" <tmo26@gmx.de>
To: "'Baptiste Jonglez'" <baptiste@bitsofnetworks.org>,
 "'Pumr, Ondrej \(EEK\)'" <Ondrej.Pumr@skoda-auto.cz>
References: <C02EF912F243ED4F9D4C4104F769FA4869CC52A2@SKDAMBXM02.mb.skoda.vwg>
 <20200110140224.GA209673@lud.localdomain>
In-Reply-To: <20200110140224.GA209673@lud.localdomain>
Date: Mon, 13 Jan 2020 14:08:45 +0100
Message-ID: <002701d5ca12$97482f10$c5d88d30$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKD11gIW/js3Ue7WLWV5aPW2z2F+AGxwWC4pn7n1MA=
Content-Language: de
X-Provags-ID: V03:K1:gBNLbtXVkoS3eEtT0Ji+kYZhbs2pCTgMsied5uxOG8M0+nZ1rS/
 H9u0XiSvlukqadCkx7+DlGOzy4MteOBfPyDRgLX8sV9yrBg/5cBfACXP3dgQ75FiiXYNfbk
 RbzmduSpSej34tTyg689TyUy/hQznuJVfhf6MViQMgTYuGzeSVjbpjjeSnpZIAbUcu/aRZw
 eIKJ7QZmGwZMyufe2ulvg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jNoyBUAmmXg=:TdjUx/HCdfaYVA7JHxZUZr
 ULFNJah8MLWlLi+HMCsXKtmp4DtT+RjgnONOxRRV4gdqpIDrfjslaKPVq9pUsmChATVjWGk/5
 o0bCkU0HEhnVCyzkp7PfMMYcNgYQOk/63IHcLl8h5C28hBUhmINDxY1IZ5j5d11PJP0tYfhAB
 7NqU8OxzFceA1c2xlSuwTzcG999lPAZS4H3n6/mw62A/m/gQDDTN2NkPzqoHZiC19mFOZK0xh
 dlsPb8MK/A8CTaKmETIUXOQPfpjMfx4KsJkn5J+OuQgN3H4jI3oL/VuJnWkem13gCiRle8Ofa
 MS7leMdf7ze6buIRUutjNeNbEGFiBcN6sWflbnYlb/BqgfvDXintMXAue2i8a1LHm19epnRCj
 o2RjilZkckhcF7C9KW+W1ZKxhVkx5ISfRBoAdy3BkZkikRnYVkkrPrFEAZo/7AcEfe2ajqctQ
 rVKva6Z7YMZkKY6+Q8uffoRZg3Uzfb1kkcoY8lwXGZb8KdqmrTQzlKriuzVdK7KoA207HWCSf
 7uAzcycigsgxuLT4s+toGbWIrm21drdhHWqMPbQlQRTjSWevFVlQ4EUt61Roi7nZfQSDPJEkR
 3EgseNpHVFRcqaaR/jqx0h4FgJcGUMIgR9uIFpKwZE87TJcjNWTrJy1U8veC4E2vhL/U6YTG1
 sLjtMGwTHSR+sEoGtVJ+LUNEanODJvZUZxUHTSj9T1S4Fr0CExo3YqFXiQvi3EqdTd+Uj35wP
 HUy8tFcnpkOODLH4P855++deBuJtiKv3L7rTBoOMiauz/ExTbvk0k8OIwW6+tzOcwDjgngclr
 oVQwy8cx2SRxy5FkM9DL84MSUw2yWxYuDkjuSmMMM1G5Qck7sFNsa1W3mB3W1Gh08zRz704Qj
 RPalRAlbDovkaohTftVIPQbbyAJDY6BKCW0jFlvTWAiwKVplVYN51Wo9dh3Pw5W5fkfZ2MP+I
 lKE+LQiboinuuOygF+idhuLLpaHiAw6Fz2q0Rdsc3CQmoB3QxFmfIUSQq7qhIMlCRUlZK3ST+
 PahDmKXLu8QfLSZAJmVucCNmsd0TcsTzWInfvh7Y3QL+IreU7aaPZBsCWvsvf843tebBZn0mG
 yi7OZO133qx1kYWHrGSm4H9JpLnh5x1iXaTi6lO/Dx7o8eV/zzEMYYtgsDFCCBcWZVE7TTi28
 J851P+nA/GDxSplKJN0u+AxFOkavpeoZz8wfTT7CqMJCXQZIY3VH23i6Se13o3/RpARHXITzi
 PPSrScbo5k621CcVjPv214FnLNtLHx/mgVC+dkA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_050857_961385_7183D68A 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmo26[at]gmx.de)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmo26[at]gmx.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Question:  Migration from ar71xx to ath79
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
Cc: openwrt-devel@lists.openwrt.org, 'Thomas Endt' <tmo26@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> @Thomas: I saw that there are auto-generated pages listing ath79 devices,
> it's very helpful:
> 
>   https://openwrt.org/docs/techref/targets/ath79
>   https://openwrt.org/docs/techref/targets/ar71xx-ath79
> 
> What is the source used to generate them?

Source = the dataentries of the respective devices

>  Where could people add
> important information about upgrading for a specific device?  Would it be
> better on the device pages themselves, or in a column of this table?

It depends.
The dataentries should be used only for very short instructions (like "change imagename to xyz.bin before flashing).
Everything that needs more explanation should be put on the devicepages, simply because there is much more space available.

Thomas


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
